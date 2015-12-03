package how.as2js.codeDom
{
	import how.as2js.codeDom.temp.TempCondition;

	public class CodeWhile extends CodeObject
	{
		public var While:TempCondition;
		public function CodeWhile()
		{
			
		}
		override public function out(tabCount:int):String
		{
			While.allow.owner = owner;
			While.executable.parent = owner;
			While.executable.owner = owner;
			While.executable.tempData = owner.tempData;
			var result:String = getTab(tabCount)+"while("+While.allow.out(tabCount)+")"+getLeftBrace(tabCount)+While.executable.out(tabCount+1)+"\n"+getTab(tabCount)+"}";
			return result;
		}
	}
}