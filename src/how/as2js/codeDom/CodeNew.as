package how.as2js.codeDom
{
	public class CodeNew extends CodeObject
	{
		public var newObject:CodeObject;
		public function CodeNew()
		{
		}
		override public function out(tabCount:int):String
		{
			newObject.owner = owner;
			return "new " + newObject.out(tabCount);
		}
	}
}