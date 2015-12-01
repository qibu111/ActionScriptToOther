package how.as2js.codeDom
{

	public class CodeTry extends CodeObject
	{
		public var tryExecutable:CodeExecutable;//try指令执行
		public var catchExecutable:CodeExecutable;//catch指令执行
		public var identifier:String;//异常对象
		override public function toES5(tabCount:int):String
		{
			tryExecutable.parent = owner;
			tryExecutable.owner = owner;
			tryExecutable.tempData = owner.tempData;
			var catchString:String = "";
			if(catchExecutable)
			{
				catchExecutable.parent = owner;
				catchExecutable.owner = owner;
				catchExecutable.tempData = owner.tempData;
				catchString = "\n"+getTab(tabCount)+"catch("+identifier+")"+getLeftBrace(tabCount)+catchExecutable.toES5(tabCount+1)+getTab(tabCount)+"}";
			}
			return getTab(tabCount)+"try" + getLeftBrace(tabCount) +
				tryExecutable.toES5(tabCount+1) + getTab(tabCount) + "}" + catchString;
		}
	}
}