package how.as2js.codeDom
{
	import how.as2js.compiler.TokenType;

	public class CodeIsAs extends CodeObject
	{
		public var leftObject:CodeObject;
		public var rightObject:CodeObject;
		public var type:int;
		public function CodeIsAs(leftObject:CodeObject,rightObject:CodeObject,type:int)
		{
			this.leftObject = leftObject;
			this.rightObject = rightObject;
			this.type = type;
		}
		override public function toES5(tabCount:int):String
		{
			leftObject.owner = owner;
			rightObject.owner = owner;
			if(type == TokenType.Is)
			{
				return leftObject.toES5(0) + " instanceof " + rightObject.toES5(0);
			}
			else
			{
				return "("+leftObject.toES5(0) + " instanceof " + rightObject.toES5(0)+")?"+leftObject.toES5(0)+":null)";
			}
		}
	}
}