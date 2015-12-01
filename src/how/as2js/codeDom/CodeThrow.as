package how.as2js.codeDom
{
	

	public class CodeThrow extends CodeObject
	{
		public var obj:CodeObject;
		override public function toES5(tabCount:int):String
		{
			obj.owner = owner;
			return "throw " + obj.toES5(0);
		}
	}
}