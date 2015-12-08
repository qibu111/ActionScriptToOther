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
	new Runtime().registerClass(codeClass);//注册类，这样才能知道继承的对象的成员
	trace(codeClass.out(1));//把Demo.as转换成egret模式的Demo.js
}
--------------------------------------------------------------------------------------------------------------------------------
"Demo.as"：
/**
 * 江左梅郎
 * @modol 1
 * @bind true
 */
package how.demo
{
	import how.behaviour.Action;
	public class Demo
	{
		private var target: Object;
		private var values: Object;
		private var data:int = 2;
		private static var data:int = 1;
		public function Demo(target: Object,values: Object)
		{
			super();
			this.target = target;
			this.values = values;
		}
		public function exec(): void {
			this.parseValue("target");
			this.parseValue("values");
			for(var at in this.values) {
				this.target[at] = this.values[at];
			}
			this.done();
		}
	}
}