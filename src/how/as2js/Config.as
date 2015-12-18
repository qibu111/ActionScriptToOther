package how.as2js
{
	public final class Config
	{
		/**
		 * 暂时只支持0
		 * 0:how,1:egret,2:cocos2d-js,3:babel
		 */
		public static var modol:int = 0;
		/**
		 * 是否单行显示
		 */
		public static var oneLine:Boolean = false;
		/**
		 * 制表符，默认4个空格
		 */
		public static var tab:String = "    ";
		/**
		 * 换行符
		 */
		public static var nextLine:String = "\n";
		/**
		 * { 是否下一行显示
		 */
		public static var leftBraceNextLine:Boolean = false;
		/**
		 * 是否绑定this
		 */
		public static var bind:Boolean = false;
	}
}