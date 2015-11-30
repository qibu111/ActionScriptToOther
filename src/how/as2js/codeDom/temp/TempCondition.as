package how.as2js.codeDom.temp
{
	import how.as2js.codeDom.CodeObject;
	import how.as2js.codeDom.CodeExecutable;

	/**
	 *  if语句中一个 if语句
	 */
	public class TempCondition
	{
		public var allow:CodeObject;                        //判断条件
		public var executable:CodeExecutable;             //指令列表
		public function TempCondition(allow:CodeObject,executable:CodeExecutable)
		{
			this.allow = allow;
			this.executable = executable;
		}
	}
}