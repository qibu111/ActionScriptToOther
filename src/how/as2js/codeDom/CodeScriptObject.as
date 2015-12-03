package how.as2js.codeDom
{
	public class CodeScriptObject extends CodeObject
	{
		public var object:Object;
		public function CodeScriptObject(obj:Object) 
		{ 
			object = obj; 
		}
		override public function out(tabCount:int):String
		{
			var result:String = "";
			if(object is Number)
			{
				result = parseInt(object+"")+"";
			}
			else if(object is String)
			{
				result = "\""+object+"\"";
			}
			return result;
		}
	}
}