用法：
var scriptLexer:ScriptLexer = new ScriptLexer("Demo.as");
var scriptParser:ScriptParser = new ScriptParser(scriptLexer.GetTokens(),scriptLexer.GetBreviary());
var codeClass:CodeClass;
Config.modol = 0;
try
{
	codeClass = scriptParser.Parse();	
} 
catch(error:Error) 
{
	if(error is ParseError)
	{
		trace(error.message);	
	}
	else
	{
		var token:Token = scriptParser.PeekToken()
		var msg:String = " Line:" + (token.SourceLine+1) + "  Column:" + token.SourceChar + "  Type:" + TokenType.getTypeName(token.Type) + "  value[" + token.Lexeme + "]    " + error.message;
		trace(msg);
	}
}
if(codeClass)
{
	trace(codeClass.out(1));//把Demo.as转换成egret模式的Demo.js
}
--------------------------------------------------------------------------------------------------------------------------------
"Demo.as"：
package
{
	import how.howMain;
	public class Demo extends howMain
	{
		public function Demo()
		{
			super(LoadingUI,"gameResource.json",
				["sound","public","disanfang","zhanghaodenglu","kuaisudenglu","loginScene"],960,640,base.Loadding);
		}
		public function start(): void 
		{
			how.ComponentUtils.init("public.AlertSkin","public.DialogSkin",null,"public.NoticeSkin","public.LoaddingSkin");
			AppModule.getInstance().initModule(LoginSceneModule,LoginSceneView,LoginSceneData);//模块初始化
			new how.behaviour.Exec("Test.action",null,this).exec();
		}
		/**
		 * 子类继承获取加载进度
		 */
		protected function onLoaddingProgress(percent: number,current: number,total: number): void {
			var loadingUI: LoadingUI = this.loadingUI;
			loadingUI.setProgress(percent,current,total);
		}
		protected function onAllGroupComplete(): void {
			var loadingUI: LoadingUI = this.loadingUI;
			loadingUI.setText("正在初始化...");
		}
		public function onBack(): void {
			how.Dialog.show("你确定要退出游戏？",function(): void {
				how.Application.exit();
			},null,this);
		}
	}
}