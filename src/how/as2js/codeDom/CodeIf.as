package how.as2js.codeDom
{
	import how.as2js.codeDom.temp.TempCondition;

	public class CodeIf extends CodeObject
	{
		public var If:TempCondition;
		public var Else:TempCondition;
		public var ElseIf:Vector.<TempCondition> = new Vector.<TempCondition>();
		public function AddElseIf(con:TempCondition):void
		{
			ElseIf.push(con);
		}
		override public function out(tabCount:int):String
		{
			If.allow.owner = owner;
			If.executable.parent = owner;
			If.executable.owner = owner;
			If.executable.tempData = owner.tempData;
			var result:String = getTab(tabCount)+"if("+If.allow.out(tabCount)+")"+getLeftBrace(tabCount)+If.executable.out(tabCount+1)+"\n"+getTab(tabCount)+"}\n";
			var elseifString:String = "";
			if(ElseIf.length)
			{
				for (var i:int = 0; i < ElseIf.length; i++) 
				{
					ElseIf[i].allow.owner = owner;
					ElseIf[i].executable.parent = owner;
					ElseIf[i].executable.owner = owner;
					ElseIf[i].executable.tempData = owner.tempData;
					elseifString += getTab(tabCount)+"else if("+ElseIf[i].allow.out(tabCount)+")"+getLeftBrace(tabCount)+ElseIf[i].executable.out(tabCount+1)+"\n"+getTab(tabCount)+"}\n";
				}
				
			}
			var elseString:String = "";
			if(Else)
			{
				Else.executable.parent = owner;
				Else.executable.owner = owner;
				Else.executable.tempData = owner.tempData;
				elseString = getTab(tabCount)+"else"+getLeftBrace(tabCount)+Else.executable.out(tabCount+1)+"\n"+getTab(tabCount)+"}\n";
			}
			result += elseifString;
			result += elseString;
			result = result.substring(0,result.length-1);
			return result;
		}
	}
}