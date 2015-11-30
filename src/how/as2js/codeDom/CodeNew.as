package how.as2js.codeDom
{
	public class CodeNew extends CodeObject
	{
		public var newObject:CodeObject;
		public function CodeNew()
		{
		}
		override public function toES5(tabCount:int):String
		{
			newObject.owner = owner;
			return "new " + newObject.toES5(tabCount);
		}
	}
}