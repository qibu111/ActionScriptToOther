package how.as2js.codeDom.temp
{
	import how.as2js.codeDom.CodeExecutable;

	public class TempCase
	{
		public var allow:Vector.<Object>;                  //判断条件
		public var executable:CodeExecutable;         //指令列表
		public function TempCase(allow:Vector.<Object>,executable:CodeExecutable)
		{
			this.allow = allow;
			this.executable = executable;
		}
	}
}