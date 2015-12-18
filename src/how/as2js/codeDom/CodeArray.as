package how.as2js.codeDom
{
	public class CodeArray extends CodeObject
	{
		public var elements:Vector.<CodeObject> = new Vector.<CodeObject>();
		override public function out(tabCount:int):String
		{
			var result:String = "[";
			for (var i:int = 0; i < elements.length; i++) 
			{
				elements[i].owner = owner;
				result += elements[i].out(tabCount)+",";
			}
			result += "]";
			return result;
		}
	}
}