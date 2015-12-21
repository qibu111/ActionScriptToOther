package how.as2js.compiler
{
	import how.as2js.Config;
	import how.as2js.Utils;

	/**
	 * 脚本语法解析器
	 */
	public class ScriptLexer
	{
		private var m_strToken:String = null;           //字符串token
		private var m_listSourceLines:Vector.<String>;//所有行
		private var m_listTokens:Vector.<Token>;//解析后所得Token
		private var _commentList:Vector.<String>;
		public function get commentList():Vector.<String>//解析后得到的注释内容
		{
			return _commentList;
		}
		private var commentStrToken:String = "";           //字符串token
		private var m_strBreviary:String;//字符串的摘要 取第一行字符串的前20个字符
		private const BREVIARY_CHAR:int = 20;//摘要的字符数
		private var m_iSourceLine:int;//当前解析行数
		private var m_iSourceChar:int;//当前解析字符
		private var m_lexState:int;
		private var ch:String;//当前的解析的字符

		public function get lexState():int
		{
			return m_lexState;
		}

		public function set lexState(value:int):void
		{
			m_lexState = value;
			if (m_lexState == LexState.None) 
			{
				m_strToken = ""; 
			}
		}
		public function get EndOfLine():Boolean
		{
			return m_iSourceChar >= m_listSourceLines[m_iSourceLine].length;
		}
		public function get EndOfSource():Boolean
		{
			return m_iSourceLine >= m_listSourceLines.length;
		}
		
		public function ScriptLexer(buffer:String)
		{
			m_listSourceLines = new Vector.<String>();
			m_listTokens = new Vector.<Token>();
			_commentList = new Vector.<String>();
			var strSource:String = buffer.replace("\r\n", "\r");
			var strLines:Array = strSource.split('\r');
			m_strBreviary = strLines.length > 0 ? strLines[0] : "";
			if (m_strBreviary.length > BREVIARY_CHAR){ m_strBreviary = m_strBreviary.substring(0, BREVIARY_CHAR)};
			for (var i:int = 0; i < strLines.length; i++) 
			{
				var strLine:String = strLines[i];
				m_listSourceLines.push(strLine + "\r\n");
			}
			m_iSourceLine = 0;
			m_iSourceChar = 0;
			lexState = LexState.None;
			
		}
		/**
		 * 获得整段字符串的摘要
		 */
		public function GetBreviary():String
		{
			return m_strBreviary;
		}
		
		protected function IgnoreLine():void
		{
			++m_iSourceLine;
			m_iSourceChar = 0;
		}
		protected function ReadChar():String
		{
			if (EndOfSource){
				throw new Error("End of source reached.", m_iSourceLine);
			}
			var ch:String = m_listSourceLines[m_iSourceLine].charAt(m_iSourceChar++);
			if (m_iSourceChar >= m_listSourceLines[m_iSourceLine].length) {
				m_iSourceChar = 0;
				++m_iSourceLine;
			}
			return ch;
		}
		protected function AddToken(type:int,lexeme:Object = null):void
		{
			lexeme = lexeme != null?lexeme:ch;
			m_listTokens.push(new Token(type, lexeme, m_iSourceLine, m_iSourceChar));
			lexState = LexState.None;
		}
		public function getValue(key:String):String
		{
			if(_commentList)
			{
				for (var i:int = 0; i < _commentList.length; i++) 
				{
					if(_commentList[i] == "@"+key && i+1 < _commentList.length)
					{
						return _commentList[i+1];
					}
				}
			}
			return null;
		}
		protected function AddComment():void
		{
			if(Utils.IsLetterOrDigit(ch) || ch == '@')
			{
				commentStrToken += ch;
			}
			else
			{
				if(commentStrToken.length != 0)
				{
					_commentList.push(commentStrToken);
				}
				commentStrToken = "";
			}
		}
		private function ThrowInvalidCharacterException(ch:String):void
		{
			throw new Error("Unexpected character [" + ch + "]  Line:" + (m_iSourceLine + 1) + " Column:" + m_iSourceChar + " [" + m_listSourceLines[m_iSourceLine] + "]");
		}
		private function UndoChar():void
		{
			if (m_iSourceLine == 0 && m_iSourceChar == 0){
				throw new Error("Cannot undo char beyond start of source.", m_iSourceLine);
			}
			--m_iSourceChar;
			if (m_iSourceChar < 0) {
				--m_iSourceLine;
				m_iSourceChar = m_listSourceLines[m_iSourceLine].length - 1;
			}
		}
		private function IsHexDigit(c:String):Boolean
		{
			if( Utils.IsDigit( c ) ){
				return true;
			}
			if( 'a' <= c && c <= 'f' ){
				return true;
			}
			if( 'A' <= c && c <= 'F' ){
				return true;
			}
			return false;
		}
		/**
		 * 解析字符串
		 */
		public function GetTokens():Vector.<Token>
		{
			m_iSourceLine = 0;
			m_iSourceChar = 0;
			lexState = LexState.None;
			m_listTokens.length = 0;
			while (!EndOfSource)
			{
				if (EndOfLine)
				{
					IgnoreLine();
					continue;
				}
				ch = ReadChar();
				var value:Number;
				switch (lexState)
				{
					case LexState.None:
						switch (ch)
						{
							case ' ':
							case '\t':
							case '\n':
							case '\r':
								break;
							case '(':
								AddToken(TokenType.LeftPar);
								break;
							case ')':
								AddToken(TokenType.RightPar);
								break;
							case '[':
								AddToken(TokenType.LeftBracket);
								break;
							case ']':
								AddToken(TokenType.RightBracket);
								break;
							case '{':
								AddToken(TokenType.LeftBrace);
								break;
							case '}':
								AddToken(TokenType.RightBrace);
								break;
							case ',':
								AddToken(TokenType.Comma);
								break;
							case ':':
								AddToken(TokenType.Colon);
								break;
							case ';':
								AddToken(TokenType.SemiColon);
								break;
							case '?':
								AddToken(TokenType.QuestionMark);
								break;
							case '.':
								lexState = LexState.PeriodOrParams;
								break;
							case '+':
								lexState = LexState.PlusOrIncrementOrAssignPlus;
								break;
							case '-':
								lexState = LexState.MinusOrDecrementOrAssignMinus;
								break;
							case '*':
								lexState = LexState.MultiplyOrAssignMultiply;
								break;
							case '/':
								lexState = LexState.CommentOrDivideOrAssignDivide;
								AddComment();
								break;
							case '%':
								lexState = LexState.ModuloOrAssignModulo;
								break;
							case '=':
								lexState = LexState.AssignOrEqual;
								break;
							case '&':
								lexState = LexState.AndOrCombine;
								break;
							case '|':
								lexState = LexState.OrOrInclusiveOr;
								break;
							case '!':
								lexState = LexState.NotOrNotEqual;
								break;
							case '>':
								lexState = LexState.GreaterOrGreaterEqual;
								break;
							case '<':
								lexState = LexState.LessOrLessEqual;
								break;
							case '^':
								lexState = LexState.XorOrAssignXor;
								break;
							case '@':
								lexState = LexState.SimpleStringStart;
								break;
							case "\"":
								lexState = LexState.String;
								break;
							case '\'':
								lexState = LexState.SingleString;
								break;
							default:
								if (ch == '_' || ch == '$' || Utils.IsLetter(ch)) 
								{
									lexState = LexState.Identifier;
									m_strToken = "" + ch;
								} 
								else if (ch == '0')
								{
									lexState = LexState.NumberOrHexNumber;
									m_strToken = "";
								} 
								else if (Utils.IsDigit(ch))
								{
									lexState = LexState.Number;
									m_strToken = "" + ch;
								} 
								else
								{
									ThrowInvalidCharacterException(ch);
								}
								break;
						}
						break;
					case LexState.PeriodOrParams:
						if (ch == '.') {
							lexState = LexState.Params;
						} else {
							AddToken(TokenType.Period, ".");
							UndoChar();
						}
						break;
					case LexState.Params:
						if (ch == '.') {
							AddToken(TokenType.Params, "...");
						} else {
							ThrowInvalidCharacterException(ch);
						}
						break;
					case LexState.PlusOrIncrementOrAssignPlus:
						if (ch == '+') {
							AddToken(TokenType.Increment, "++");
						} else if (ch == '=') {
							AddToken(TokenType.AssignPlus, "+=");
						} else {
							AddToken(TokenType.Plus, "+");
							UndoChar();
						}
						break;
					case LexState.MinusOrDecrementOrAssignMinus:
						if (ch == '-') {
							AddToken(TokenType.Decrement, "--");
						} else if (ch == '=') {
							AddToken(TokenType.AssignMinus, "-=");
						} else {
							AddToken(TokenType.Minus, "-");
							UndoChar();
						}
						break;
					case LexState.MultiplyOrAssignMultiply:
						if (ch == '=') {
							AddToken(TokenType.AssignMultiply, "*=");
						} else {
							AddToken(TokenType.Multiply, "*");
							UndoChar();
						}
						break;
					case LexState.CommentOrDivideOrAssignDivide:
						switch (ch) {
							case '/':
								lexState = LexState.LineComment;
								AddComment();
								break;
							case '*':
								lexState = LexState.BlockCommentStart;
								AddComment();
								break;
							case '=':
								AddToken(TokenType.AssignDivide, "/=");
								break;
							default:
								AddToken(TokenType.Divide, "/");
								UndoChar();
								break;
						}
						break;
					case LexState.ModuloOrAssignModulo:
						if (ch == '=') {
							AddToken(TokenType.AssignModulo, "%=");
						} else {
							AddToken(TokenType.Modulo, "%");
							UndoChar();
						}
						break;
					case LexState.LineComment:
						if (ch == '\n'){
							lexState = LexState.None;
						}
						break;
					case LexState.BlockCommentStart:
						if (ch == '*'){
							lexState = LexState.BlockCommentEnd;
						}
						AddComment();
						break;
					case LexState.BlockCommentEnd:
						if (ch == '/'){
							lexState = LexState.None;
						}
						else{
							lexState = LexState.BlockCommentStart;
						}
						AddComment();
						break;
					case LexState.AssignOrEqual:
						if (ch == '=') {
							AddToken(TokenType.Equal, "==");
						} else {
							AddToken(TokenType.Assign, "=");
							UndoChar();
						}
						break;
					case LexState.AndOrCombine:
						if (ch == '&') {
							AddToken(TokenType.And, "&&");
						} else if (ch == '=') {
							AddToken(TokenType.AssignCombine, "&=");
						} else {
							AddToken(TokenType.Combine, "&");
							UndoChar();
						}
						break;
					case LexState.OrOrInclusiveOr:
						if (ch == '|') {
							AddToken(TokenType.Or, "||");
						} else if (ch == '=') {
							AddToken(TokenType.AssignInclusiveOr, "|=");
						} else {
							AddToken(TokenType.InclusiveOr, "|");
							UndoChar();
						}
						break;
					case LexState.XorOrAssignXor:
						if (ch == '=') {
							AddToken(TokenType.AssignXOR, "^=");
						} else {
							AddToken(TokenType.XOR, "^");
							UndoChar();
						}
						break;
					case LexState.GreaterOrGreaterEqual:
						if (ch == '=') {
							AddToken(TokenType.GreaterOrEqual, ">=");
						} else if (ch == '>') {
							lexState = LexState.ShrOrAssignShr;
						} else {
							AddToken(TokenType.Greater, ">");
							UndoChar();
						}
						break;
					case LexState.LessOrLessEqual:
						if (ch == '=') {
							AddToken(TokenType.LessOrEqual, "<=");
						} else if (ch == '<') {
							lexState = LexState.ShiOrAssignShi;
						} else {
							AddToken(TokenType.Less, "<");
							UndoChar();
						}
						break;
					case LexState.ShrOrAssignShr:
						if (ch == '=') {
							AddToken(TokenType.AssignShr, ">>=");
						} else {
							AddToken(TokenType.Shr, ">>");
							UndoChar();
						}
						break;
					case LexState.ShiOrAssignShi:
						if (ch == '=') {
							AddToken(TokenType.AssignShi, "<<=");
						} else {
							AddToken(TokenType.Shi, "<<");
							UndoChar();
						}
						break;
					case LexState.NotOrNotEqual:
						if (ch == '=') {
							AddToken(TokenType.NotEqual, "!=");
						} else {
							AddToken(TokenType.Not, "!");
							UndoChar();
						}
						break;
					case LexState.String:
						if (ch == "\"") {
							AddToken(TokenType.String, m_strToken);
						} else if (ch == '\\') {
							lexState = LexState.StringEscape;
						} else if (ch == '\r' || ch == '\n') {
							ThrowInvalidCharacterException(ch);
						} else {
							m_strToken += ch;
						}
						break;
					case LexState.StringEscape:
						if (ch == '\\' || ch == "\"") {
							m_strToken += ch;
							lexState = LexState.String;
						} else if (ch == 't') {
							m_strToken += '\t';
							lexState = LexState.String;
						} else if (ch == 'r') {
							m_strToken += '\r';
							lexState = LexState.String;
						} else if (ch == 'n') {
							m_strToken += '\n';
							lexState = LexState.String;
						} else {
							ThrowInvalidCharacterException(ch);
						}
						break;
					case LexState.SingleString:
						if (ch == '\'') {
							AddToken(TokenType.String, m_strToken);
						} else if (ch == '\\') {
							lexState = LexState.SingleStringEscape;
						} else if (ch == '\r' || ch == '\n') {
							ThrowInvalidCharacterException(ch);
						} else {
							m_strToken += ch;
						}
						break;
					case LexState.SingleStringEscape:
						if (ch == '\\' || ch == '\'') {
							m_strToken += ch;
							lexState = LexState.SingleString;
						} else if (ch == 't') {
							m_strToken += '\t';
							lexState = LexState.SingleString;
						} else if (ch == 'r') {
							m_strToken += '\r';
							lexState = LexState.SingleString;
						} else if (ch == 'n') {
							m_strToken += '\n';
							lexState = LexState.SingleString;
						} else {
							ThrowInvalidCharacterException(ch);
						}
						break;
					case LexState.SimpleStringStart:
						if (ch == "\"") {
							lexState = LexState.SimpleString;
						} else if (ch == '\'') {
							lexState = LexState.SingleSimpleString;
						} else {
							ThrowInvalidCharacterException(ch);
						}
						break;
					case LexState.SimpleString:
						if (ch == "\"") {
							lexState = LexState.SimpleStringQuotationMarkOrOver;
						} else {
							m_strToken += ch;
						}
						break;
					case LexState.SimpleStringQuotationMarkOrOver:
						if (ch == "\"") {
							m_strToken += "\"";
							lexState = LexState.SimpleString;
						} else {
							AddToken(TokenType.String, m_strToken);
							UndoChar();
						}
						break;
					case LexState.SingleSimpleString:
						if (ch == '\'') {
							lexState = LexState.SingleSimpleStringQuotationMarkOrOver;
						} else {
							m_strToken += ch;
						}
						break;
					case LexState.SingleSimpleStringQuotationMarkOrOver:
						if (ch == '\'') {
							m_strToken += '\'';
							lexState = LexState.SingleSimpleString;
						} else {
							AddToken(TokenType.String, m_strToken);
							UndoChar();
						}
						break;
					case LexState.NumberOrHexNumber:
						if (ch == 'x') {
							lexState = LexState.HexNumber;
						} else {
							m_strToken = "0";
							lexState = LexState.Number;
//							AddToken(TokenType.Number, 0);
							UndoChar();
						}
						break;
					case LexState.Number:
						if (Utils.IsDigit(ch) || ch == '.') 
						{
							m_strToken += ch;
						}
						else 
						{
							value = parseFloat(m_strToken);
							AddToken(TokenType.Number, value);
							UndoChar();
						}
						break;
					case LexState.HexNumber:
						if (IsHexDigit(ch))
						{
							m_strToken += ch;
						} 
						else
						{
							if (Utils.IsNullOrEmpty(m_strToken)){
								ThrowInvalidCharacterException(ch);
							}
							value = parseInt(m_strToken);
							AddToken(TokenType.Number, value);
							UndoChar();
						}
						break;
					case LexState.Identifier:
						if (ch == '_' || ch == '$' || Utils.IsLetterOrDigit(ch)) {
							m_strToken += ch;
						} else {
							var tokenType:int;
							switch (m_strToken)
							{
//								case "modol":
//									break;
								case "package":
									tokenType = TokenType.Package;
									break;
								case "class":
									tokenType = TokenType.Class;
									break;
								case "interface":
									tokenType = TokenType.Interface;
									break;
								case "public":
									tokenType = TokenType.Public;
									break;
								case "protected":
									tokenType = TokenType.Protected;
									break;
								case "private":
									tokenType = TokenType.Private;
									break;
								case "internal":
									tokenType = TokenType.Internal;
									break;
								case "dynamic":
									tokenType = TokenType.Dynamic;
									break;
								case "final":
									tokenType = TokenType.Final;
									break;
								case "extends":
									tokenType = TokenType.Extends;
									break;
								case "override":
									tokenType = TokenType.Override;
									break;
								case "void":
									tokenType = TokenType.Void;
									break;
								case "import":
									tokenType = TokenType.Import;
									break;
								case "static":
									tokenType = TokenType.Static;
									break;
								case "get":
									tokenType = TokenType.Get;
									break;
								case "set":
									tokenType = TokenType.Set;
									break;
								case "super":
									tokenType = TokenType.Super;
									break;
								case "each":
									tokenType = TokenType.Each;
									break;
								case "new":
									tokenType = TokenType.New;
									break;
								case "const":
									tokenType = TokenType.Const;
									break;
								case "var":
									tokenType = TokenType.Var;
									break;
								case "function":
									tokenType = TokenType.Function;
									break;
								case "if":
									tokenType = TokenType.If;
									break;
								case "else":
									tokenType = TokenType.Else;
									break;
								case "while":
									tokenType = TokenType.While;
									break;
								case "for":
									tokenType = TokenType.For;
									break;
								case "in":
									tokenType = TokenType.In;
									break;
								case "switch":
									tokenType = TokenType.Switch;
									break;
								case "case":
									tokenType = TokenType.Case;
									break;
								case "default":
									tokenType = TokenType.Default;
									break;
								case "try":
									tokenType = TokenType.Try;
									break;
								case "catch":
									tokenType = TokenType.Catch;
									break;
								case "throw":
									tokenType = TokenType.Throw;
									break;
								case "continue":
									tokenType = TokenType.Continue;
									break;
								case "break":
									tokenType = TokenType.Break;
									break;
								case "return":
									tokenType = TokenType.Return;
									break;
								case "null":
									tokenType = TokenType.Null;
									break;
								case "true":
								case "false":
									tokenType = TokenType.Boolean;
									break;
								case "is":
									tokenType = TokenType.Is;
									break;
								case "as":
									tokenType = TokenType.As;
									break;
								case "delete":
									tokenType = TokenType.Delete;
									break;
								default:
									tokenType = TokenType.Identifier;
									break;
							}
							if (tokenType == TokenType.Boolean) 
							{
								m_listTokens.push(new Token(tokenType, m_strToken == "true", m_iSourceLine, m_iSourceChar));
							} 
							else if (tokenType == TokenType.Null)
							{
								m_listTokens.push(new Token(tokenType, null, m_iSourceLine, m_iSourceChar));
							}
							else
							{
								m_listTokens.push(new Token(tokenType, m_strToken, m_iSourceLine, m_iSourceChar));
							}
							UndoChar();
							lexState = LexState.None;
						}
						break;
				}
			}
			m_listTokens.push(new Token(TokenType.Finished, "", m_iSourceLine, m_iSourceChar));
//			Config.modol = parseInt(getValue("modol"));
//			Config.bind = getValue("bind") != null && getValue("bind") == "true";
			return m_listTokens;
		}
	}
}