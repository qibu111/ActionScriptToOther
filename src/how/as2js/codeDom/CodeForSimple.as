package how.as2js.codeDom
{
	import flash.utils.Dictionary;
	

	public class CodeForSimple extends CodeObject
	{
		public var identifier:String;
		public var begin:CodeObject;
		public var finished:CodeObject;
		public var step:CodeObject;
		public var blockExecutable:CodeExecutable;            //for内容
		public var variables:Dictionary;  //变量
		public function CodeForSimple()
		{
			variables = new Dictionary();
		}
		public function SetContextExecutable(blockExecutable:CodeExecutable):void
		{
			blockExecutable = blockExecutable;
		}
	}
}