package how.as2js.compiler
{
	

	public class Token
	{
		private var _type:int;

		/**
		 * 标记类型
		 */
		public function get type():int
		{
			return _type;
		}

		private var _lexeme:Object;

		/**
		 * 标记值
		 */
		public function get lexeme():Object
		{
			return _lexeme;
		}

		private var _sourceLine:int;

		/**
		 * 所在行
		 */
		public function get sourceLine():int
		{
			return _sourceLine;
		}

		private var _sourceChar:int;
		
		/**
		 * 所在列
		 */
		public function get sourceChar():int
		{
			return _sourceChar;
		}

		public function Token(tokenType:int,lexeme:Object, sourceLine:int, sourceChar:int)
		{
			this._type = tokenType;
			this._lexeme = lexeme;
			this._sourceLine = sourceLine;
			this._sourceChar = sourceChar;
		}
		public function toString():String
		{	
			return TokenType.getTypeName(_type) + ":" + _lexeme.toString();
		}
	}
}