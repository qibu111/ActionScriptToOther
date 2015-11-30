package how.as2js.codeDom
{

	public class CodeForeach extends CodeObject
	{
		public var identifier:String;
		public var loopObject:CodeObject;
		public var executable:CodeExecutable;
		public function CodeForeach()
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
			return getTab(tabCount)+"for each(var " + identifier + " in " + loopObject.toES5(0) + ")\n" + getTab(tabCount) + "{\n" +
				(executable?executable.toES5(tabCount+1):"") + getTab(tabCount) + "}";
		}
	}
}