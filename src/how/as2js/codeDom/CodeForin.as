package how.as2js.codeDom
{

	public class CodeForin extends CodeObject
	{
		public var identifier:String;
		public var loopObject:CodeObject;
		public var executable:CodeExecutable;
		public function CodeForin()
		{
			
		}
		override public function toES5(tabCount:int):String
		{
			loopObject.owner = owner;
			if(executable)
			{
				executable.parent = owner;
				executable.owner = owner;
				executable.tempData = owner.tempData;	
			}
			return getTab(tabCount)+"for(var " + identifier + " in " + loopObject.toES5(0) + ")" + getLeftBrace(tabCount) +
				executable.toES5(tabCount+1) + getTab(tabCount) + "}";
		}
	}
}