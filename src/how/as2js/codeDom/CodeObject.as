package how.as2js.codeDom
{
	import how.as2js.Config_ES5Convert;
	import how.as2js.error.StackInfo;

	public class CodeObject
	{
		public var not:Boolean;            // ! 标识（非xxx）
		public var negative:Boolean;       // - 标识（负数）
		public var stackInfo:StackInfo;     // 堆栈数据
		public var owner:CodeExecutable;
		public function CodeObject(breviary:String = null,line:int = 0)
		{
			if(breviary)
			{
				stackInfo = new StackInfo(breviary, line);	
			}
		}
		public function toES5(tabCount:int):String
		{
			return "";
		}
		protected function getTab(tabCount:int):String
		{
			var tab:String = "";
			if(!Config_ES5Convert.oneLine)
			{
				for (var i:int = 0; i < tabCount; i++) 
				{
					tab += Config_ES5Convert.tab;
				}
			}
			return tab;
		}
		public function getLeftBrace(tabCount:int):String
		{
			if(Config_ES5Convert.leftBraceNextLine)
			{
				return Config_ES5Convert.nextLine+getTab(tabCount)+"{\n";
			}
			else
			{
				return "{\n";
			}
		}
	}
}