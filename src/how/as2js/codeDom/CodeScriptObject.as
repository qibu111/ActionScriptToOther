package how.as2js.codeDom
{
	public class CodeScriptObject extends CodeObject
	{
		public var object:Object;
		public function CodeScriptObject(obj:Object) 
		{ 
			object = obj; 
		}
		override public function toES5(tabCount:int):String
		{
			return object+"";
		}
	}
}