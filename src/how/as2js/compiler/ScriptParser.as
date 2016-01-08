package how.as2js.compiler
{
	import how.as2js.Config;
	import how.as2js.codeDom.CALC;
	import how.as2js.codeDom.CodeArray;
	import how.as2js.codeDom.CodeAssign;
	import how.as2js.codeDom.CodeCallFunction;
	import how.as2js.codeDom.CodeClass;
	import how.as2js.codeDom.CodeCocos;
	import how.as2js.codeDom.CodeDelete;
	import how.as2js.codeDom.CodeEgret;
	import how.as2js.codeDom.CodeExecutable;
	import how.as2js.codeDom.CodeFor;
	import how.as2js.codeDom.CodeForSimple;
	import how.as2js.codeDom.CodeForeach;
	import how.as2js.codeDom.CodeForin;
	import how.as2js.codeDom.CodeFunction;
	import how.as2js.codeDom.CodeIf;
	import how.as2js.codeDom.CodeInstruction;
	import how.as2js.codeDom.CodeIsAs;
	import how.as2js.codeDom.CodeMember;
	import how.as2js.codeDom.CodeNew;
	import how.as2js.codeDom.CodeObject;
	import how.as2js.codeDom.CodeOperator;
	import how.as2js.codeDom.CodeScriptObject;
	import how.as2js.codeDom.CodeSuper;
	import how.as2js.codeDom.CodeSwitch;
	import how.as2js.codeDom.CodeTernary;
	import how.as2js.codeDom.CodeThrow;
	import how.as2js.codeDom.CodeTry;
	import how.as2js.codeDom.CodeVariable;
	import how.as2js.codeDom.CodeWhile;
	import how.as2js.codeDom.temp.TempCase;
	import how.as2js.codeDom.temp.TempCondition;
	import how.as2js.codeDom.temp.TempOperator;
	import how.as2js.error.ParseError;
	import how.as2js.error.StackInfo;
	import how.as2js.runtime.Opcode;
	
	public class ScriptParser
	{
		private var m_strBreviary:String;                                                   //当前解析的脚本摘要
		private var m_iNextToken:int;                                                       //当前读到token
		private var m_listTokens:Vector.<Token>;                                               //token列表
		private var codeClass:CodeClass;//解析结果
		public function ScriptParser(listTokens:Vector.<Token>,strBreviary:String)
		{
			m_strBreviary = strBreviary;
			m_iNextToken = 0;
			m_listTokens = listTokens.concat();
		}
		//解析脚本
		public function Parse():CodeClass
		{
			if(Config.modol == 0)
			{
				codeClass = new CodeClass();
			}
			else if(Config.modol == 1)
			{
				codeClass = new CodeEgret();
			}
			else if(Config.modol == 2)
			{
				codeClass = new CodeCocos();
			}
			ReadPackage();
			codeClass.packAge = GetPackageName();//包名
			ReadLeftBrace();
			codeClass.imports = GetImports();//导入列表
			codeClass.modifierType = GetModifierType();//修饰符
			if(PeekToken().type == TokenType.Function)//全局函数
			{
				
			}
			else
			{
				codeClass.isFinal = GetFinal();//终级类
				codeClass.isDynamic = GetDynamic();//动态类
				ReadClass();
				codeClass.name = ReadIdentifier();
				codeClass.parent = GetExtend();
				GetMembers(codeClass);
			}
			ReadRightBrace();
			return codeClass;
		}
		/// <summary> 读取导入列表 </summary>
		private function GetImports():Vector.<String>
		{
			var imports:Vector.<String> = new Vector.<String>();
			while(PeekToken().type == TokenType.Import)//说明存在导入
			{
				ReadToken();//读取import关键字
				var importItem:String = ReadIdentifier();
				while(PeekToken().type == TokenType.Period)
				{
					ReadToken();
					importItem += "."+ReadIdentifier();
				}
				imports.push(importItem);
				if(PeekToken().type == TokenType.SemiColon)//如果存在分号
				{
					ReadToken();
				}
			}
			return imports;
		}
		/// <summary> 读取包名 </summary>
		private function GetPackageName():String
		{
			if(PeekToken().type == TokenType.Identifier)//说明存在包名定义
			{
				var packageName:String = ReadIdentifier();
				while(PeekToken().type == TokenType.Period)
				{
					ReadToken();
					packageName += "."+ReadIdentifier();
				}
				return packageName;
			}
			return "";
		}
		/// <summary> 读取修饰符 </summary>
		private function GetModifierType():int
		{
			var token:Token = ReadToken();
			if(token.type == TokenType.Public
				||token.type == TokenType.Protected
				||token.type == TokenType.Internal
				||token.type == TokenType.Private)
			{
				return token.type;
			}
			else
			{
				UndoToken();
				return TokenType.Internal;
			}
		}
		
		/// <summary> 读取final修饰符 </summary>
		private function GetFinal():Boolean
		{
			if(PeekToken().type == TokenType.Final)
			{
				ReadToken();
				return true;
			}
			return false;
		}
		
		/// <summary> 读取dynamic修饰符 </summary>
		private function GetDynamic():Boolean
		{
			if(PeekToken().type == TokenType.Dynamic)
			{
				ReadToken();
				return true;
			}
			return false;
		}
		
		/// <summary> 读取继承 </summary>
		private function GetExtend():String
		{
			if(PeekToken().type == TokenType.Extends)
			{
				ReadToken();
				return ReadIdentifier();
			}
			return null;
		}
		
		/// <summary> 读取成员 </summary>
		private function GetMembers(thisCodeClass:CodeClass=null):CodeClass
		{
			var codeClass:CodeClass = thisCodeClass==null?new CodeClass():thisCodeClass;
			ReadLeftBrace();
			while (PeekToken().type != TokenType.RightBrace)
			{
				var token:Token = ReadToken();
				var modifierType:int = TokenType.Private;//属性描述符
				var isStatic:Boolean = false;//是否静态属性
				var isConst:Boolean = false;//是否常量
				var isOverride:Boolean = false;
				var type:CodeObject = null;//属性类型
				if(token.type == TokenType.Static)
				{
					isStatic = true;
					token = ReadToken();
				}
				if(token.type == TokenType.Override)
				{
					isOverride = true;
					token = ReadToken();
				}
				if (token.type == TokenType.Public||token.type == TokenType.Private||token.type == TokenType.Protected||token.type == TokenType.Internal)
				{
					modifierType = token.type;
					token = ReadToken();
				}
				if(token.type == TokenType.Override)
				{
					isOverride = true;
					token = ReadToken();
				}
				if(token.type == TokenType.Static)
				{
					isStatic = true;
					token = ReadToken();
				}
				if(token.type == TokenType.Var)
				{
					token = ReadToken();
				}
				if(token.type == TokenType.Const)
				{
					isConst = true;
					token = ReadToken();
				}
				if(token.type == TokenType.Identifier) 
				{
					var next:Token = ReadToken();
					if(next.type == TokenType.Colon)
					{
						type = GetOneObject();
						next = ReadToken();
					}
					if(next.type == TokenType.Assign) 
					{
						if(next.type == TokenType.New)//实例化
						{
							codeClass.variables.push(new CodeVariable(token.lexeme,GetNew(),modifierType,isStatic,isConst,isOverride,type));
						}
						else if(token.lexeme is int)
						{
							codeClass.variables.push(new CodeVariable(parseInt(token.lexeme.toString()), GetObject(),modifierType,isStatic,isConst,isOverride,type));
						}
						else if(token.lexeme is Number)
						{
							codeClass.variables.push(new CodeVariable(parseFloat(token.lexeme.toString()), GetObject(),modifierType,isStatic,isConst,isOverride,type));
						}
						else
						{
							codeClass.variables.push(new CodeVariable(token.lexeme, GetObject(),modifierType,isStatic,isConst,isOverride,type));
						}
						var peek:Token = PeekToken();
						if(peek.type == TokenType.Comma || peek.type == TokenType.SemiColon)
						{
							ReadToken();
						}
					}
					else//默认不赋值就是空
					{
						codeClass.variables.push(new CodeVariable(token.lexeme,null,modifierType,isStatic,isConst,isOverride,type));
						peek = PeekToken();
						if(peek.type == TokenType.Comma || peek.type == TokenType.SemiColon)
						{
							ReadToken();
						}
					}
				} 
				else if(token.type == TokenType.Function)
				{
					UndoToken();
					codeClass.functions.push(ParseFunctionDeclaration(isStatic));
				} 
				else
				{
					throw new ParseError(token,"Table开始关键字必须为[变量名称]或者[function]关键字");
				}
			}			
			ReadRightBrace();
			return codeClass;
		}
		
		//返回实例化
		private function GetNew(executable:Object = null):CodeNew
		{
			var ret:CodeNew = new CodeNew();
			ret.newObject = GetObject();
			//			if(executable != null)
			//			{
			//				executable.AddInstruction(new Instruction(Opcode.NEW, ret));
			//			}
			return ret;
		}
		//获得单一变量
		private function GetOneObject():CodeObject
		{
			var ret:CodeObject = null;
			var token:Token = ReadToken();
			var not:Boolean = false;
			var negative:Boolean = false;
			var calc:int = CALC.NONE;
			if (token.type == TokenType.Not) {
				not = true;
				token = ReadToken();
			} else if (token.type == TokenType.Minus) {
				negative = true;
				token = ReadToken();
			} else if (token.type == TokenType.Increment) {
				calc = CALC.PRE_INCREMENT;
				token = ReadToken();
			} else if (token.type == TokenType.Decrement) {
				calc = CALC.PRE_DECREMENT;
				token = ReadToken();
			}
			switch (token.type)
			{
				case TokenType.Super:
					ret = new CodeMember(null);
					(ret as CodeMember).type = CodeMember.TYPE_NULL;
					break;
				case TokenType.Identifier:
					if(token.lexeme == "Vector")
					{
						if(PeekToken().type == TokenType.Period)
						{
							ReadToken();//.
							ReadToken();//>
							ReadToken();//type
							ReadToken();//>
						}
					}
					ret = new CodeMember(token.lexeme.toString());
					break;
				case TokenType.Function:
					UndoToken();
					ret = ParseFunctionDeclaration(false);
					break;
				case TokenType.LeftPar:
					ret = GetObject();
					ReadRightParenthesis();
					break;
				case TokenType.LeftBracket:
					UndoToken();
					ret = GetArray();
					break;
				case TokenType.LeftBrace:
					UndoToken();
					ret = GetMembers();
					break;
				case TokenType.Null:
				case TokenType.Boolean:
				case TokenType.Number:
				case TokenType.String:
					ret = new CodeScriptObject(token.lexeme);
					break;
				case TokenType.New:
					ret = GetNew();
					break;
				default:
					throw new ParseError(token,"Object起始关键字错误 ");
					break;
			}
			ret.stackInfo = new StackInfo(m_strBreviary, token.sourceLine);
			ret = GetVariable(ret);
			ret.not = not;
			ret = GetTernary(ret);
			ret.negative = negative;
			if (ret is CodeMember) {
				if (calc != CALC.NONE) {
					(ret as CodeMember).calc = calc;
				} else {
					var peek:Token = ReadToken();
					if (peek.type == TokenType.Increment) {
						calc = CALC.POST_INCREMENT;
					} else if (peek.type == TokenType.Decrement) {
						calc = CALC.POST_DECREMENT;
					} else {
						UndoToken();
					}
					if (calc != CALC.NONE) {
						(ret as CodeMember).calc = calc;
					}
				}
			} else if (calc != CALC.NONE) {
				throw new ParseError(token,"++ 或者 -- 只支持变量的操作");
			}
			return ret;
		}		
		//返回三元运算符
		private function GetTernary(parent:CodeObject):CodeObject
		{
			if (PeekToken().type == TokenType.QuestionMark)
			{
				var ret:CodeTernary = new CodeTernary();
				ret.allow = parent;
				ReadToken();
				ret.True = GetObject(false);
				//				UndoToken();
				//				UndoToken();
				ReadColon();
				ret.False = GetObject(false);
				return ret;
			}
			return parent;
		}
		//返回变量数据
		private function GetVariable(parent:CodeObject):CodeObject
		{
			var ret:CodeObject = parent;
			for ( ; ; ) {
				var m:Token = ReadToken();
				if (m.type == TokenType.Period) {
					var identifier:String = ReadIdentifier();
					ret = new CodeMember(identifier,null,0, ret);
				} else if (m.type == TokenType.LeftBracket) {
					var member:CodeObject = GetObject();
					ReadRightBracket();
					if (member is CodeScriptObject) {
						var obj:Object = (member as CodeScriptObject).object;
						if (obj is Number){
							ret = new CodeMember(null,null,parseFloat(obj.toString()), ret);
						}
						else if (obj is String){
							ret = new CodeMember(obj.toString(),null,0, ret);
						}
						else{
							throw new ParseError(m,"获取变量只能是 number或string");
						}
					} else {
						ret = new CodeMember(null,member,0, ret);
					}
				} else if (m.type == TokenType.LeftPar) {
					UndoToken();
					ret = GetFunction(ret);
				} else {
					UndoToken();
					break;
				}
			}
			return ret;
		}
		//返回一个调用函数 Object
		private function GetFunction(member:CodeObject):CodeCallFunction
		{
			var ret:CodeCallFunction = new CodeCallFunction();
			ReadLeftParenthesis();
			var pars:Vector.<CodeObject> = new Vector.<CodeObject>();
			var token:Token = PeekToken();
			while (token.type != TokenType.RightPar)
			{
				pars.push(GetObject());
				token = PeekToken();
				if (token.type == TokenType.Comma)
				{
					ReadComma();
				}
				else if (token.type == TokenType.RightPar)
				{
					break;
				}
				else
				{
					throw new ParseError(token,"Comma ',' or right parenthesis ')' expected in function declararion.");
				}
			}
			ReadRightParenthesis();
			ret.member = member;
			ret.parameters = pars;
			return ret;
		}
		//返回数组
		private function GetArray():CodeArray
		{
			ReadLeftBracket();
			var token:Token = PeekToken();
			var ret:CodeArray = new CodeArray();
			while (token.type != TokenType.RightBracket)
			{
				if (PeekToken().type == TokenType.RightBracket){
					break;
				}
				ret.elements.push(GetObject());
				token = PeekToken();
				if (token.type == TokenType.Comma) {
					ReadComma();
				} else if (token.type == TokenType.RightBracket) {
					break;
				} 
				else
				{
					throw new ParseError(token,"Comma ',' or right parenthesis ']' expected in array object.");
				}
			}
			ReadRightBracket();
			return ret;
		}
		//获取一个Object
		private function GetObject(readColon:Boolean = true):CodeObject
		{
			var operateStack:Vector.<TempOperator> = new Vector.<TempOperator>();
			var objectStack:Vector.<CodeObject> = new Vector.<CodeObject>();
			while (true)
			{
				objectStack.push(GetOneObject());
				if (!P_Operator(operateStack, objectStack))
				{
					break;
				}
			}
			while (true)
			{
				if (operateStack.length <= 0)
				{
					break;
				}
				var oper:TempOperator = operateStack.pop();
				var binexp:CodeOperator = new CodeOperator(objectStack.pop(), objectStack.pop(), oper.operator);
				objectStack.push(binexp);
			}
			var ret:CodeObject = objectStack.pop();
			if (ret is CodeMember)
			{
				var member:CodeMember = ret as CodeMember;
				if (member.calc == CALC.NONE)
				{
					var token:Token = ReadToken();
					if(token.type == TokenType.Colon && readColon)//如果后面跟着个冒号
					{
						member.memType = GetOneObject();
						token = ReadToken();
					}
					switch (token.type)
					{
						case TokenType.Assign:
						case TokenType.AssignPlus:
						case TokenType.AssignMinus:
						case TokenType.AssignMultiply:
						case TokenType.AssignDivide:
						case TokenType.AssignModulo:
						case TokenType.AssignCombine:
						case TokenType.AssignInclusiveOr:
						case TokenType.AssignXOR:
						case TokenType.AssignShr:
						case TokenType.AssignShi:
							return new CodeAssign(member, GetObject(), token.type, m_strBreviary, token.sourceLine);
							break;
						default:
							UndoToken();
							break;
					}
				}
			}
			var nextToken:Token = ReadToken();
			if(nextToken.type == TokenType.Is || nextToken.type == TokenType.As)
			{
				ret = new CodeIsAs(ret,GetObject(),nextToken.type);
			}
			else
			{
				UndoToken();
			}
			return ret;
		}		
		//解析操作符
		private function P_Operator(operateStack:Vector.<TempOperator>,objectStack:Vector.<CodeObject>):Boolean
		{
			var curr:TempOperator = TempOperator.getOper(PeekToken().type);
			if (curr == null) {return false;}
			ReadToken();
			while (operateStack.length > 0) 
			{
				var oper:TempOperator = operateStack[operateStack.length-1];
				if (oper.level >= curr.level) 
				{
					operateStack.pop();
					var binexp:CodeOperator = new CodeOperator(objectStack.pop(), objectStack.pop(), oper.operator);
					objectStack.push(binexp);
				} 
				else
				{
					break;
				}
			}
			operateStack.push(curr);
			return true;
		}
		//解析成员函数（返回一个函数）
		private function ParseFunctionDeclaration(isStatic:Boolean):CodeFunction
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.Function)
			{
				throw new ParseError(token,"Function declaration must start with the 'function' keyword.");
			}
			var scriptFunctionType:int = CodeFunction.TYPE_NORMAL;
			if(PeekToken().type == TokenType.Get)
			{
				token = ReadToken();
				scriptFunctionType = CodeFunction.TYPE_GET;
			}
			if(PeekToken().type == TokenType.Set)
			{
				token = ReadToken();
				scriptFunctionType = CodeFunction.TYPE_SET;
			}
			var strFunctionName:String;
			if (PeekToken().type != TokenType.LeftPar)//有可能是匿名函数
			{
				strFunctionName = ReadIdentifier();
				strFunctionName = scriptFunctionType==CodeFunction.TYPE_GET?".get"+strFunctionName:strFunctionName;
				strFunctionName = scriptFunctionType==CodeFunction.TYPE_SET?".set"+strFunctionName:strFunctionName;	
			}
			ReadLeftParenthesis();
			var listParameters:Vector.<String> = new Vector.<String>();
			var listParameterTypes:Vector.<CodeMember> = new Vector.<CodeMember>();
			var listValues:Vector.<CodeObject> = new Vector.<CodeObject>();
			var bParams:Boolean = false;
			if (PeekToken().type != TokenType.RightPar) 
			{
				while (true) 
				{
					token = ReadToken();
					if (token.type == TokenType.Params) 
					{
						token = ReadToken();
						bParams = true;
					}
					if (token.type != TokenType.Identifier) 
					{
						throw new ParseError(token,"Unexpected token '" + token.lexeme + "' in function declaration.");
					}
					var strParameterName:String = token.lexeme.toString();
					token = PeekToken();
					if (token.type == TokenType.Colon)
					{
						ReadColon();
						var param:CodeObject = GetObject();
						if(param is CodeMember)
						{
							listParameterTypes.push(param);
						}
						else if(param is CodeAssign)
						{
							listValues.push((param as CodeAssign).value);
							listParameterTypes.push((param as CodeAssign).member);
						}
					}
					else
					{
						listParameterTypes.push(null);
					}
					listParameters.push(strParameterName);
					token = PeekToken();
					if (token.type == TokenType.Comma && !bParams)
					{
						ReadComma();
					}
					else if (token.type == TokenType.RightPar)
					{
						break;
					}
					else
					{
						throw new ParseError(token,"Comma ',' or right parenthesis ')' expected in function declararion.");
					}
				}
			}
			ReadRightParenthesis();
			token = ReadToken();
			if (token.type == TokenType.Colon)//如果后面跟着冒号
			{
				token = ReadToken();
				if(token.lexeme == "Vector")
				{
					if(PeekToken().type == TokenType.Period)
					{
						ReadToken();//.
						ReadToken();//>
						ReadToken();//type
						ReadToken();//>
					}
				}
			}
			else
			{
				UndoToken();
			}
			var executable:CodeExecutable = new CodeExecutable(CodeExecutable.Block_Function);
			ParseStatementBlock(executable);
			return new CodeFunction(strFunctionName,listParameters,listParameterTypes,listValues,executable,bParams,isStatic,scriptFunctionType);
		}		
		//解析区域代码内容( {} 之间的内容)
		private function ParseStatementBlock(executable:CodeExecutable,readLeftBrace:Boolean = true,finished:int = 4):void
		{
			
			if (readLeftBrace) 
			{
				ReadLeftBrace();
			}
			var tokenType:int;
			while (HasMoreTokens())
			{
				tokenType = ReadToken().type;
				if (tokenType == finished) 
				{
					break;
				}
				UndoToken();
				ParseStatement(executable);
			}
			executable.endInstruction();
		}		
		//解析区域代码内容 ({} 之间的内容)
		private function ParseStatement(executable:CodeExecutable):void
		{
			var token:Token = ReadToken();
			switch (token.type)
			{
				case TokenType.Public:
					throw new ParseError(token,"方法内的声明不支持public ");
					break;
				case TokenType.Protected:
					throw new ParseError(token,"方法内的声明不支持protected ");
					break;
				case TokenType.Private:
					throw new ParseError(token,"方法内的声明不支持private ");
					break;
				case TokenType.Internal:
					throw new ParseError(token,"方法内的声明不支持internal ");
					break;
				case TokenType.Var:
					ParseVar(executable);
					break;
				case TokenType.If:
					ParseIf(executable);
					break;
				case TokenType.For:
					ParseFor(executable);
					break;
				case TokenType.While:
					ParseWhile(executable);
					break;
				case TokenType.Switch:
					ParseSwtich(executable);
					break;
				case TokenType.Try:
					ParseTry(executable);
					break;
				case TokenType.Throw:
					ParseThrow(executable);
					break;
				case TokenType.Return:
					ParseReturn(executable);
					break;
				case TokenType.Identifier:
				case TokenType.Increment:
				case TokenType.Decrement:
					ParseExpression(executable);
					break;
				case TokenType.New:
					executable.addInstruction(new CodeInstruction(Opcode.NEW,GetNew(executable)));
					break;
				case TokenType.Super:
					executable.addInstruction(new CodeInstruction(Opcode.SUPER,GetSuper(executable)));
					break;
				case TokenType.Break:
					executable.addInstruction(new CodeInstruction(Opcode.BREAK, new CodeObject(m_strBreviary,token.sourceLine)));
					break;
				case TokenType.Continue:
					executable.addInstruction(new CodeInstruction(Opcode.CONTINUE, new CodeObject(m_strBreviary,token.sourceLine)));
					break;
				case TokenType.Function:
					ParseFunctionDeclaration(false);
					break;
				case TokenType.SemiColon:
					break;
				case TokenType.Delete:
					executable.addInstruction(new CodeInstruction(Opcode.DELETE, new CodeDelete(GetObject())));
					break;
				case TokenType.LeftPar:
					UndoToken();
					executable.addInstruction(new CodeInstruction(Opcode.RESOLVE,GetObject()));
					break;
				default:
					throw new ParseError(token,"不支持的语法 ");
					break;
			}
		}
		
		//解析Var关键字
		private function ParseVar(executable:CodeExecutable):void
		{
			for (; ; ) 
			{
				var tokenIndex:int = m_iNextToken;
				var identifier:String = ReadIdentifier();
				var typeMem:CodeObject;
				var peek:Token = PeekToken();
				if (peek.type == TokenType.Colon)
				{
					ReadToken();
					typeMem = GetOneObject();
					peek = PeekToken();
				}
				executable.addInstruction(new CodeInstruction(Opcode.VAR,typeMem,null,identifier));
				if (peek.type == TokenType.Assign) 
				{
					m_iNextToken = tokenIndex;
					ParseStatement(executable);
				}
				peek = ReadToken();
				if (peek.type != TokenType.Comma) 
				{
					UndoToken();
					break;
				}
			}
		}
		//解析if(判断语句)
		private function ParseIf(executable:CodeExecutable):void
		{
			var ret:CodeIf = new CodeIf();
			ret.If = ParseCondition(true,new CodeExecutable(CodeExecutable.Block_If,executable));
			for (; ; )
			{
				var token:Token = ReadToken();
				if (token.type == TokenType.Else)
				{
					if (PeekToken().type == TokenType.If)
					{
						ReadToken();
						ret.AddElseIf(ParseCondition(true,new CodeExecutable(CodeExecutable.Block_If,executable)));
					} 
					else
					{
						UndoToken();
						break;
					}
				} 
				else
				{
					UndoToken();
					break;
				}
			}
			if (PeekToken().type == TokenType.Else)
			{
				ReadToken();
				ret.Else = ParseCondition(false,new CodeExecutable(CodeExecutable.Block_If,executable));
			}
			executable.addInstruction(new CodeInstruction(Opcode.CALL_IF, ret));
		}
		
		//解析判断内容
		private function ParseCondition(condition:Boolean,executable:CodeExecutable):TempCondition
		{
			var con:CodeObject = null;
			if (condition)
			{
				ReadLeftParenthesis();
				con = GetObject();
				ReadRightParenthesis();
			}
			ParseStatementBlock(executable);
			return new TempCondition(con,executable);
		}
		
		//解析for语句
		private function ParseFor(executable:CodeExecutable):void
		{
			if(PeekToken().type == TokenType.Each)
			{
				ReadToken();
				ParseForeach(executable);
			}
			else
			{
				ReadLeftParenthesis();
				var partIndex:int = m_iNextToken;
				var token:Token = ReadToken();
				if (token.type == TokenType.Identifier)
				{
					var assign:Token = ReadToken();
					if (assign.type == TokenType.Assign)
					{
						var obj:CodeObject = GetObject();
						var comma:Token = ReadToken();
						if (comma.type == TokenType.Comma)
						{
							ParseFor_Simple(executable,token.lexeme.toString(), obj);
							return;
						}
					}
				}
				if(token.type == TokenType.Var)
				{
					if(ReadToken().type == TokenType.Identifier)
					{
						if(PeekToken().type == TokenType.Colon)
						{
							ReadColon();
							ReadIdentifier();
						}
						if(ReadToken().type == TokenType.In)
						{
							m_iNextToken = partIndex;
							ParseForin(executable);
							return;
						}
					}
				}
				m_iNextToken = partIndex;
				ParseFor_impl(executable);
			}
		}
		
		//解析正规for循环
		private function ParseFor_impl(executable:CodeExecutable):void
		{
			var ret:CodeFor = new CodeFor();
			var token:Token = ReadToken();
			if (token.type != TokenType.SemiColon)
			{
				UndoToken();
				var forBeginExecutable:CodeExecutable = new CodeExecutable(CodeExecutable.Block_ForBegin,executable);
				ParseStatementBlock(forBeginExecutable, false, TokenType.SemiColon);
				ret.beginExecutable = forBeginExecutable;
			}
			token = ReadToken();
			if (token.type != TokenType.SemiColon)
			{
				UndoToken();
				ret.condition = GetObject();
				ReadSemiColon();
			}
			token = ReadToken();
			if (token.type != TokenType.RightPar)
			{
				UndoToken();
				var forLoopExecutable:CodeExecutable = new CodeExecutable(CodeExecutable.Block_ForLoop,executable);
				ParseStatementBlock(forLoopExecutable, false, TokenType.RightPar);
				ret.loopExecutable = forLoopExecutable;
			}
			var forExecutable:CodeExecutable = new CodeExecutable(CodeExecutable.Block_For,executable);
			ParseStatementBlock(forExecutable);
			ret.SetContextExecutable(forExecutable);
			executable.addInstruction(new CodeInstruction(Opcode.CALL_FOR, ret));
		}
		//解析foreach语句
		private function ParseForeach(executable:CodeExecutable):void
		{
			var ret:CodeForeach = new CodeForeach();
			ReadLeftParenthesis();
			ReadVar();
			ret.identifier = ReadIdentifier();
			if(PeekToken().type == TokenType.Colon)
			{
				ReadColon();
				ReadIdentifier();
			}
			ReadIn();
			ret.loopObject = GetObject();
			ReadRightParenthesis();
			var forEachExecutable:CodeExecutable = new CodeExecutable(CodeExecutable.Block_Foreach,executable);
			ParseStatementBlock(forEachExecutable);
			ret.executable = forEachExecutable;
			executable.addInstruction(new CodeInstruction(Opcode.CALL_FOREACH, ret));
		}
		//解析forin语句
		private function ParseForin(executable:CodeExecutable):void
		{
			var ret:CodeForin = new CodeForin();
			ReadVar();
			ret.identifier = ReadIdentifier();
			if(PeekToken().type == TokenType.Colon)
			{
				ReadColon();
				ReadIdentifier();
			}
			ReadIn();
			ret.loopObject = GetObject();
			ReadRightParenthesis();
			var forEachExecutable:CodeExecutable = new CodeExecutable(CodeExecutable.Block_Foreach,executable);
			ParseStatementBlock(forEachExecutable);
			ret.executable = forEachExecutable;
			executable.addInstruction(new CodeInstruction(Opcode.CALL_FORIN, ret));
		}
		//解析单纯for循环
		private function ParseFor_Simple(executable:CodeExecutable,Identifier:String,obj:CodeObject):void
		{
			var ret:CodeForSimple = new CodeForSimple();
			ret.identifier = Identifier;
			ret.begin = obj;
			ret.finished = GetObject();
			if (PeekToken().type == TokenType.Comma)
			{
				ReadToken();
				ret.step = GetObject();
			}
			ReadRightParenthesis();
			var forExecutable:CodeExecutable = new CodeExecutable(CodeExecutable.Block_For,executable);
			ParseStatementBlock(forExecutable);
			ret.SetContextExecutable(forExecutable);
			executable.addInstruction(new CodeInstruction(Opcode.CALL_FORSIMPLE, ret));
		}		
		//解析while（循环语句）
		private function ParseWhile(executable:CodeExecutable):void
		{
			var ret:CodeWhile = new CodeWhile();
			ret.While = ParseCondition(true,new CodeExecutable(CodeExecutable.Block_While,executable));
			executable.addInstruction(new CodeInstruction(Opcode.CALL_WHILE, ret));
		}
		
		//解析swtich语句
		private function ParseSwtich(executable:CodeExecutable):void
		{
			var ret:CodeSwitch = new CodeSwitch();
			ReadLeftParenthesis();
			ret.condition = GetObject();
			ReadRightParenthesis();
			ReadLeftBrace();
			var switchExecutable:CodeExecutable;
			for (; ; )
			{
				var token:Token = ReadToken();
				if (token.type == TokenType.Case) {
					
					var vals:Vector.<CodeObject> = new Vector.<CodeObject>();
					ParseCase(vals);
					switchExecutable = new CodeExecutable(CodeExecutable.Block_Switch,executable);
					ParseStatementBlock(switchExecutable, false, TokenType.Break);
					ret.AddCase(new TempCase(vals,switchExecutable));
				} 
				else if (token.type == TokenType.Default) 
				{
					ReadColon();
					switchExecutable = new CodeExecutable(CodeExecutable.Block_Switch,executable);
					ParseStatementBlock(switchExecutable, false, TokenType.Break);
					ret.def = new TempCase(null,switchExecutable);
				} 
				else if (token.type != TokenType.SemiColon)
				{
					UndoToken();
					break;
				}
			}
			ReadRightBrace();
			executable.addInstruction(new CodeInstruction(Opcode.CALL_SWITCH, ret));
		}
		//解析case
		private function ParseCase(vals:Vector.<CodeObject>):void
		{
			//			var val:Token = ReadToken();
			//			if (val.Type == TokenType.String || val.Type == TokenType.Number)
			//			{
			//				vals.push(val.Lexeme);
			//			}
			//			else
			//			{
			//				throw new ParseError(val,"case 语句 只支持 string和number类型");
			//			}
			vals.push(GetObject(false));
			ReadColon();
			if (ReadToken().type == TokenType.Case) 
			{
				ParseCase(vals);
			} 
			else
			{
				UndoToken();
			}
		}
		
		//解析try catch
		private function ParseTry(executable:CodeExecutable):void
		{
			var exec:CodeExecutable;
			var ret:CodeTry = new CodeTry();
			exec = new CodeExecutable(CodeExecutable.Block_Function,executable);
			ParseStatementBlock(exec);
			ret.tryExecutable = exec;
			ReadCatch();
			ReadLeftParenthesis();
			ret.identifier = ReadIdentifier();
			var peek:Token = PeekToken();
			if (peek.type == TokenType.Colon)
			{
				ReadToken();
				ReadToken();
				peek = PeekToken();
			}
			ReadRightParenthesis();
			exec = new CodeExecutable(CodeExecutable.Block_Function,executable);
			ParseStatementBlock(exec);
			ret.catchExecutable = exec;
			executable.addInstruction(new CodeInstruction(Opcode.CALL_TRY, ret));
		}		
		//解析throw
		private function ParseThrow(executable:CodeExecutable):void
		{
			var ret:CodeThrow = new CodeThrow();
			ret.obj = GetObject();
			executable.addInstruction(new CodeInstruction(Opcode.THROW, ret));
		}		
		//解析return
		private function ParseReturn(executable:CodeExecutable):void
		{
			var peek:Token = PeekToken();
			if (peek.type == TokenType.RightBrace ||
				peek.type == TokenType.SemiColon ||
				peek.type == TokenType.Finished)
			{
				executable.addInstruction(new CodeInstruction(Opcode.RET,null));
			}
			else
			{
				executable.addInstruction(new CodeInstruction(Opcode.RET, GetObject()));
			}
		}
		//解析表达式
		private function ParseExpression(executable:CodeExecutable):void
		{
			UndoToken();
			var peek:Token = PeekToken();
			var member:CodeObject = GetObject();
			if (member is CodeCallFunction)
			{
				executable.addInstruction(new CodeInstruction(Opcode.CALL_FUNCTION, member));
			} 
			else if (member is CodeMember) 
			{
				if ((member as CodeMember).calc != CALC.NONE)
				{
					executable.addInstruction(new CodeInstruction(Opcode.RESOLVE, member));
				}
				else
				{
					throw new ParseError(peek,"变量后缀不支持此操作符  " + PeekToken().lexeme);
				}
			}
			else if (member is CodeAssign)
			{
				executable.addInstruction(new CodeInstruction(Opcode.RESOLVE, member));
			}
			else
			{
				throw new ParseError(peek,"语法不支持起始符号为 " + member);
			}
		}		
		//返回super
		private function GetSuper(executable:CodeExecutable):CodeSuper
		{
			var ret:CodeSuper = new CodeSuper();
			if(PeekToken().type == TokenType.Period)
			{
				ReadToken();
				ret.superObject = GetObject();
			}
			else//直接调用构造
			{
				UndoToken();
				ret.superObject = GetObject();
			}
			return ret;
		}		
		//解析内部函数
		private function ParseFunction():Object
		{
			//			if (m_scriptExecutable.Block == Executable_Block.Context
			//			    || m_scriptExecutable.Block == Executable_Block.Class)
			//			{
			//				UndoToken();
			//				ScriptFunction func = ParseFunctionDeclaration(true,true);
			//				m_scriptExecutable.AddScriptInstruction(new ScriptInstruction(Opcode.MOV, new CodeMember(func.Name), new CodeFunction(func)));
			//			}
			return null;
		}
		
		/// <summary> 读取{ </summary>
		private function ReadLeftBrace():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.LeftBrace){
				throw new ParseError(token,"Left brace '{' expected.");
			}
		}
		
		/// <summary> 读取} </summary>
		private function ReadRightBrace():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.RightBrace){
				throw new ParseError(token,"Right brace '}' expected.");
			}
		}
		/// <summary> 回滚Token </summary>
		private function UndoToken():void
		{
			if (m_iNextToken <= 0){
				throw new ParseError(null,"No more tokens to undo.");
			}
			--m_iNextToken;
		}
		
		/// <summary> 读取class </summary>
		private function ReadClass():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.Class){
				throw new ParseError(token,"Class 'class' expected.");
			}
		}
		//读取 包关键字
		private function ReadPackage():String
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.Package){
				throw new ParseError(token,"Package 'package' expected.");
			}
			return token.lexeme.toString();
		}
		/// <summary> 获得第一个Token </summary>
		private function ReadToken():Token
		{
			if (!HasMoreTokens()){
				throw new ParseError(null,"Unexpected end of token stream.");
			}
			return m_listTokens[m_iNextToken++];
		}
		/// <summary> 是否还有更多需要解析的语法 </summary>
		private function HasMoreTokens():Boolean
		{
			return m_iNextToken < m_listTokens.length;
		}
		/// <summary> 返回第一个Token </summary>
		public function PeekToken():Token
		{
			if (!HasMoreTokens()){
				throw new ParseError(null,"Unexpected end of token stream.");
			}
			return m_listTokens[m_iNextToken];
		}
		/// <summary> 读取 未知字符 </summary>
		private function ReadIdentifier():String
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.Identifier){
				throw new ParseError(token,"Identifier expected.");
			}
			return token.lexeme.toString();
		}
		/// <summary> 读取( </summary>
		private function ReadLeftParenthesis():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.LeftPar){
				throw new ParseError(token,"Left parenthesis '(' expected.");
			}
		}
		/// <summary> 读取) </summary>
		private function ReadRightParenthesis():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.RightPar){
				throw new ParseError(token,"Right parenthesis ')' expected.");
			}
		}
		/// <summary> 读取: </summary>
		private function ReadColon():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.Colon){
				throw new ParseError(token,"Colon ':' expected.");
			}
		}
		/// <summary> 读取, </summary>
		private function ReadComma():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.Comma){
				throw new ParseError(token,"Comma ',' expected.");
			}
		}
		/// <summary> 读取var </summary>
		private function ReadVar():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.Var){
				throw new ParseError(token,"Var 'var' expected.");
			}
		}
		/// <summary> 读取in </summary>
		private function ReadIn():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.In){
				throw new ParseError(token,"In 'in' expected.");
			}
		}
		/// <summary> 读取; </summary>
		private function ReadSemiColon():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.SemiColon){
				throw new ParseError(token,"SemiColon ';' expected.");
			}
		}
		/// <summary> 读取catch </summary>
		private function ReadCatch():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.Catch){
				throw new ParseError(token,"Catch 'catch' expected.");
			}
		}
		/// <summary> 读取[ </summary>
		private function ReadLeftBracket():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.LeftBracket){
				throw new ParseError(token,"Left bracket '[' expected for array indexing expression.");
			}
		}
		/// <summary> 读取] </summary>
		private function ReadRightBracket():void
		{
			var token:Token = ReadToken();
			if (token.type != TokenType.RightBracket){
				throw new ParseError(token,"Right bracket ']' expected for array indexing expression.");
			}
		}
	}
}