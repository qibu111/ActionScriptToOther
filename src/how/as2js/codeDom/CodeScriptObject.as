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
				result = parseFloat(object+"")+"";
			}
			else if(object is String)
			{
				result = "\""+object+"\"";
				var stringRegExp:RegExp = new RegExp("(?<=\").*(?=\")","s");
				var regExpResult:Object = stringRegExp.exec(result);
				if(regExpResult && regExpResult.length && regExpResult[0].indexOf("\"") != -1)
				{
					regExpResult[0] = regExpResult[0].replace(new RegExp("\"","g"),"\\\"");
					result = "\"" + regExpResult[0] + "\"";
				}
				result = result.replace(new RegExp("\n","g"),"\\n");
				result = result.replace(new RegExp("\r","g"),"\\r");
				result = result.replace(new RegExp("\t","g"),"\\t");
			}
			else
			{
				result = object+"";
			}
			return result;
		}
	}
}