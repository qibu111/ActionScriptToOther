package how.as2js.codeDom
{
	public class CodeDelete extends CodeObject
	{
		public var deleteObject:CodeObject;
		public function CodeDelete(deleteObject:CodeObject)
		{
			this.deleteObject = deleteObject;
		}
		override public function toES5(tabCount:int):String
		{
			deleteObject.owner = owner;
			return "delete " + deleteObject.toES5(tabCount);	
		}
	}
}