package how.as2js.codeDom.temp
{
	import how.as2js.codeDom.CodeExecutable;
	import how.as2js.codeDom.CodeObject;

	public class TempCase
	{
		public var allow:Vector.<CodeObject>;                  //判断条件
		public var executable:CodeExecutable;         //指令列表
		public function TempCase(allow:Vector.<CodeObject>,executable:CodeExecutable)
		{
			this.allow = allow;
			this.executable = executable;
		}
	}
}