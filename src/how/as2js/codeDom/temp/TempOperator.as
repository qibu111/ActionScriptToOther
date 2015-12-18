package how.as2js.codeDom.temp
{
	import flash.utils.Dictionary;
	
	import how.as2js.compiler.TokenType;

	public class TempOperator
	{
		//运算符优先级表，
		private static var _operators:Dictionary;
		private static function get Operators():Dictionary
		{
			if(!_operators)
			{
				_operators = new Dictionary();
				_operators[TokenType.InclusiveOr] = new TempOperator(TokenType.InclusiveOr, 1);
				_operators[TokenType.Combine] = new TempOperator(TokenType.Combine, 1);
				_operators[TokenType.XOR] = new TempOperator(TokenType.XOR, 1);
				_operators[TokenType.Shi] = new TempOperator(TokenType.Shi, 1);
				_operators[TokenType.Shr] = new TempOperator(TokenType.Shr, 1);
				_operators[TokenType.And] = new TempOperator(TokenType.And, 1);
				_operators[TokenType.Or] = new TempOperator(TokenType.Or, 1);
				
				_operators[TokenType.Equal] = new TempOperator(TokenType.Equal, 2);
				_operators[TokenType.NotEqual] = new TempOperator(TokenType.NotEqual, 2);
				_operators[TokenType.Greater] = new TempOperator(TokenType.Greater, 2);
				_operators[TokenType.GreaterOrEqual] = new TempOperator(TokenType.GreaterOrEqual, 2);
				_operators[TokenType.Less] = new TempOperator(TokenType.Less, 2);
				_operators[TokenType.LessOrEqual] = new TempOperator(TokenType.LessOrEqual, 2);
				
				_operators[TokenType.Plus] = new TempOperator(TokenType.Plus, 3);
				_operators[TokenType.Minus] = new TempOperator(TokenType.Minus, 3);
				
				_operators[TokenType.Multiply] = new TempOperator(TokenType.Multiply, 4);
				_operators[TokenType.Divide] = new TempOperator(TokenType.Divide, 4);
				_operators[TokenType.Modulo] = new TempOperator(TokenType.Modulo, 4);
			}
			return _operators;
		}
		public var operator:int;      //符号类型
		public var level:int;               //优先级
		public static function init():void
		{
		}
		public function TempOperator(oper:int,level:int)
		{
			this.operator = oper;
			this.level = level;
		}
		//获得运算符
		public static function getOper(oper:int):TempOperator
		{
			if (Operators.hasOwnProperty(oper))
			{
				return Operators[oper];
			}
			return null;
		}
	}
}