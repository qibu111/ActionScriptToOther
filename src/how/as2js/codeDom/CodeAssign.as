package how.as2js.codeDom
{
	import how.as2js.compiler.TokenType;

	public class CodeAssign extends CodeObject
	{
		public var member:CodeMember;
		public var value:CodeObject;
		public var assignType:int;
		public function CodeAssign(member:CodeMember,value:CodeObject,assignType:int,breviary:String,line:int)
		{
			this.member = member;
			this.value = value;
			this.assignType = assignType;
			super(breviary, line)
		}
		override public function toES5(tabCount:int):String
		{
			var type:String;
			switch (assignType)
			{
				case TokenType.Assign:type="=";break;
				case TokenType.AssignPlus:type="+=";break;
				case TokenType.AssignMinus:type="-=";break;
				case TokenType.AssignMultiply:type="*=";break;
				case TokenType.AssignDivide:type="/=";break;
				case TokenType.AssignModulo:type="%=";break;
				case TokenType.AssignCombine:type="&=";break;
				case TokenType.AssignInclusiveOr:type="|=";break;
				case TokenType.AssignXOR:type="^=";break;
				case TokenType.AssignShr:type=">>=";break;
				case TokenType.AssignShi:type="<<=";break;
				default:type="未知运算符";break;
			}
			var v:String;
			member.owner = owner;
			value.owner = owner;
			v = value.toES5(tabCount);
			return member.toES5(tabCount) + " "+type+" " + v;
		}
	}
}