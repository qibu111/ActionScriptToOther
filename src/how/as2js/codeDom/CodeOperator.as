package how.as2js.codeDom
{
	import flash.utils.Dictionary;
	
	import how.as2js.compiler.TokenType;

	public class CodeOperator extends CodeObject
	{
		public var left:CodeObject;             //左边值
		public var right:CodeObject;            //右边值
		public var operator:int;          //符号类型
		private static var _operators:Dictionary;
		private static function get operators():Dictionary
		{
			if(!_operators)
			{
				_operators = new Dictionary();
				_operators[TokenType.InclusiveOr] = "|";
				_operators[TokenType.Combine] = "&";
				_operators[TokenType.XOR] = "^";
				_operators[TokenType.Shi] = "<<";
				_operators[TokenType.Shr] = ">>";
				_operators[TokenType.And] = "&&";
				_operators[TokenType.Or] = "||";
				
				_operators[TokenType.Equal] = "==";
				_operators[TokenType.NotEqual] = "!=";
				_operators[TokenType.Greater] = ">";
				_operators[TokenType.GreaterOrEqual] = ">=";
				_operators[TokenType.Less] = "<";
				_operators[TokenType.LessOrEqual] = "<=";
				
				_operators[TokenType.Plus] = "+";
				_operators[TokenType.Minus] = "-";
				
				_operators[TokenType.Multiply] = "*";
				_operators[TokenType.Divide] = "/";
				_operators[TokenType.Modulo] = "%";
			}
			return _operators;
		}
		public function CodeOperator(Right:CodeObject,Left:CodeObject,type:int)
		{
			this.left = Left;
			this.right = Right;
			this.operator = type;
		}
		override public function toES5(tabCount:int):String
		{
			left.owner = right.owner = owner;
			return left.toES5(tabCount) + " "+operators[operator]+" " + right.toES5(tabCount);
		}
	}
}