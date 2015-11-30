package how.as2js.codeDom
{
	public class CodeArray extends CodeObject
	{
		public var elements:Vector.<CodeObject> = new Vector.<CodeObject>();
		override public function toES5(tabCount:int):String
		{
			var result:String = "[";
			for (var i:int = 0; i < elements.length; i++) 
			{
				result += elements[i].toES5(tabCount)+",";
			}
			result += "]";
			return getTab(tabCount)+result;
		}
	}
}