package how.as2js.codeDom
{

	public class CodeFor extends CodeObject
	{
		public var beginExecutable:CodeExecutable;            //开始执行
		public var condition:CodeObject;                        //跳出条件
		public var loopExecutable:CodeExecutable;             //循环执行
		public var blockExecutable:CodeExecutable;            //for内容
		public function CodeFor()
		{
			
		}
		public function SetContextExecutable(blockExecutable:CodeExecutable):void
		{
			blockExecutable = blockExecutable;
		}
		override public function toES5(tabCount:int):String
		{
			if(beginExecutable)
			{
				beginExecutable.parent = owner;
				beginExecutable.owner = owner;
				beginExecutable.tempData = owner.tempData;	
			}
			
			if(condition)
			{
				condition.owner = owner;
			}
			
			if(loopExecutable)
			{
				loopExecutable.parent = owner;
				loopExecutable.owner = owner;
				loopExecutable.tempData = owner.tempData;
			}
			
			if(blockExecutable)
			{
				blockExecutable.parent = owner;
				blockExecutable.owner = owner;
				blockExecutable.tempData = owner.tempData;
			}
			return getTab(tabCount)+"for(" + (beginExecutable?beginExecutable.toES5(0).replace(";\n",""):"") + ";" + (condition?condition.toES5(0):"") + ";" + (loopExecutable?loopExecutable.toES5(0).replace(";\n",""):"")
				+ ")\n"+getTab(tabCount)+"{\n" + (blockExecutable?blockExecutable.toES5(tabCount+1):"") + getTab(tabCount)+"}";
		}
	}
}