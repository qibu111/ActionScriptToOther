package how.as2js.codeDom
{
	import how.as2js.codeDom.temp.TempCase;

	public class CodeSwitch extends CodeObject
	{
		public var condition:CodeObject;
		public var def:TempCase;
		public var cases:Vector.<TempCase> = new Vector.<TempCase>();
		public function CodeSwitch()
		{
		}
		public function AddCase(con:TempCase):void
		{
			cases.push(con);
		}
		override public function toES5(tabCount:int):String
		{
			condition.owner = owner;
			var caseString:String = "";
			var defaultString:String = "";
			for (var i:int = 0; i < cases.length; i++) 
			{
				for (var j:int = 0; j < cases[i].allow.length; j++) 
				{
					caseString += getTab(tabCount+1)+"case "+cases[i].allow[j]+":\n";
				}
				if(cases[i].executable)
				{
					cases[i].executable.parent = owner;
					cases[i].executable.owner = owner;
					cases[i].executable.tempData = owner.tempData;
					caseString += cases[i].executable.toES5(tabCount+2);
				}
				caseString += getTab(tabCount+2)+"break;\n";
			}
			if(def)
			{
				defaultString += getTab(tabCount+1)+"default:\n";
				def.executable.parent = owner;
				def.executable.owner = owner;
				def.executable.tempData = owner.tempData;
				defaultString += def.executable.toES5(tabCount+2)+getTab(tabCount+2)+"break;\n";
			}
			return getTab(tabCount)+"switch("+condition.toES5(0)+")\n"+getTab(tabCount)+"{\n"+caseString+defaultString+"\n"+getTab(tabCount)+"}";
		}
	}
}