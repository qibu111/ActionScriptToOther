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
			this.blockExecutable = blockExecutable;
		}
		override public function out(tabCount:int):String
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
			return getTab(tabCount)+"for(" + (beginExecutable?beginExecutable.out(0).replace(";\n",""):"") + ";" + (condition?condition.out(0):"") + ";" + (loopExecutable?loopExecutable.out(0).replace(";\n",""):"")
				+ ")"+getLeftBrace(tabCount) + (blockExecutable?blockExecutable.out(tabCount+1):"") + getTab(tabCount)+"}";
		}
	}
}