package how.as2js.codeDom
{
	public class CodeCocos extends CodeClass
	{
		override public function toParent():String
		{
			if(parent)
			{
				return tempData.importTempData[parent]?tempData.importTempData[parent]:parent;
			}
			else
			{
				return "cc.Class";
			}
		}
	}
}