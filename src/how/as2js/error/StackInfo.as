package how.as2js.error
{
	public class StackInfo
	{
		public var Breviary:String = "";     // 文件摘要
		public var Line:int = 1;             // 起始关键字所在行数
		public function StackInfo(breviary:String,line:int)
		{
			this.Breviary = breviary;
			this.Line = line;
		}
	}
}