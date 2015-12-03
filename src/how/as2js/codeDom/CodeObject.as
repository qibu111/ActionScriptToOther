package how.as2js.codeDom
{
	import how.as2js.Config;
	import how.as2js.error.StackInfo;

	public class CodeObject
	{
		public var not:Boolean;            // ! 标识（非xxx）
		public var negative:Boolean;       // - 标识（负数）
		public var stackInfo:StackInfo;     // 堆栈数据
		public var owner:CodeExecutable;
		public var insertString:String = "";
		public function CodeObject(breviary:String = null,line:int = 0)
		{
			if(breviary)
			{
				stackInfo = new StackInfo(breviary, line);	
			}
		}
		public function outJS(tabCount:int):String
		{
			return "";
		}
		public function out(tabCount:int):String
		{
			if(Config.modol == 0)
			{
				return this.outJS(tabCount);
			}
			else if(Config.modol == 1)
			{
				return this.outEgret(tabCount);
			}
			else if(Config.modol == 2)
			{
				return this.outCocos(tabCount);
			}
			return "";
		}
		public function outCocos(tabCount:int):String
		{
			return outJS(tabCount);
		}
		public function outEgret(tabCount:int):String
		{
			return outJS(tabCount);
		}
		protected function getTab(tabCount:int):String
		{
			var tab:String = "";
			if(!Config.oneLine)
			{
				for (var i:int = 0; i < tabCount; i++) 
				{
					tab += Config.tab;
				}
			}
			return tab;
		}
		public function getLeftBrace(tabCount:int):String
		{
			if(Config.leftBraceNextLine)
			{
				return Config.nextLine+getTab(tabCount)+"{\n";
			}
			else
			{
				return "{\n";
			}
		}
	}
}