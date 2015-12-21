package how.as2js.codeDom
{
	import flash.utils.Dictionary;
	
	import how.as2js.Config;
	import how.as2js.codeDom.temp.TempData;

	public class CodeEgret extends CodeClass
	{
		public function CodeEgret()
		{
			super();
		}
		override public function toParent():String
		{
			if(parent)
			{
				return tempData.importTempData[parent]?tempData.importTempData[parent]:parent;
			}
			else
			{
				return "";
			}
		}
		override public function out(tabCount:int):String
		{
			setTempData();
			var packageData:Array = toEgretPackage(tabCount);
			tabCount++;
			return packageData[0] + getBody(packageData[2]) + packageData[1];
		}
		override protected function getBody(tabCount:int):String
		{
			return getTab(tabCount)+name+" = (function (_super) {\n"+getTab(tabCount+1)+"__extends("+name+", _super);\n"+getTab(tabCount+1)+
				"var d = __define,c="+name+";p=c.prototype;\n"+
				toFunction(tabCount+1)+toVariable(tabCount+1)+toBindFunction(tabCount+1)+toGetSetFunction(tabCount+1)+
				toStaticVariable(tabCount+1)+getTab(tabCount+1)+"return "+name+";\n"+
				getTab(tabCount)+"})("+toParent()+");\n"+getTab(tabCount)+(packAge?packAge+(packAge.length?".":"")+
				name+" = "+name+";\n":"")+getTab(tabCount)+"egret.registerClass("+name+",\""+packAge+(packAge.length?".":"")+name+"\");";
		}
		override protected function toVariable(tabCount:int):String
		{
			var variableString:String = "";
			for (var i:int = 0; i < variables.length; i++) 
			{
				if(!variables[i].isStatic)
				{
					if(variables[i].value)
					{
						variables[i].value.owner = new CodeExecutable(0);
						variables[i].value.owner.tempData = tempData;
					}
					var value:String = variables[i].value?variables[i].value.out(0):"null";
					variableString += getTab(tabCount+1)+"this."+variables[i].key+" = "+value+";\n";	
				}
			}
			if(Config.bind)
			{
				variableString += getTab(tabCount+1)+"this.binds();\n";
			}
			return getTab(tabCount)+"p[\".init\"] = "+"function ()"+getLeftBrace(tabCount)+
				variableString+getTab(tabCount)+"};\n";
		}
		override protected function toStaticVariable(tabCount:int):String
		{
			var variableString:String = "";
			for (var i:int = 0; i < variables.length; i++) 
			{
				if(variables[i].isStatic)
				{
					if(variables[i].value)
					{
						variables[i].value.owner = new CodeExecutable(0);
						variables[i].value.owner.tempData = tempData;
					}
					var value:String = variables[i].value?variables[i].value.out(0):"null";
					variableString += getTab(tabCount)+name+"."+variables[i].key+" = "+value+";\n";	
				}
			}
			return variableString;
		}
		override protected function toFunction(tabCount:int):String
		{
			var functionString:String = "";	
			for (var i:int = 0; i < functions.length; i++) 
			{
				functions[i].executable.tempData = tempData;
				functions[i].isCtor = functions[i].name==name;
				var funName:String = functions[i].type == CodeFunction.TYPE_GET || functions[i].type == CodeFunction.TYPE_SET?"[\""+functions[i].name+"\"]":"."+functions[i].name;
				if(!functions[i].IsStatic)
				{
					if(functions[i].isCtor)
					{
						functions[i].insertString = toVariable(tabCount+1);
						functionString += getTab(tabCount)+functions[i].out(tabCount)+";\n";
					}
					else
					{
						functionString += getTab(tabCount)+"p"+funName+" = "+functions[i].out(tabCount)+";\n";
					}
				}
				else
				{
					functions[i].executable.tempData = new TempData();
					functions[i].executable.tempData.staticTempData = new Dictionary();
					functions[i].executable.tempData.thisTempData = tempData.staticTempData;
					functions[i].executable.tempData.importTempData = tempData.importTempData;
					functionString += getTab(tabCount)+name+funName+" = "+functions[i].out(tabCount)+";\n";
				}
			}
			return functionString;
		}
		override protected function toBindFunction(tabCount:int):String
		{
			if(!Config.bind)
			{
				return "";
			}
			var bindString:String = "";	
			for (var i:int = 0; i < functions.length; i++) 
			{
				var funName:String = functions[i].name;
				if(functions[i].type == CodeFunction.TYPE_NORMAL && functions[i].name!=name)
				{
					bindString += getTab(tabCount+1)+"this."+funName+" = "+"this."+funName+".bind(this);\n";
				}
			}
			return getTab(tabCount)+"p.binds = function()"+getLeftBrace(tabCount)+bindString+getTab(tabCount)+"},\n";
		}
		protected function toEgretPackage(tabCount:int):Array
		{
			var frist:String = "";
			var last:String = "";
			var newTabCount:int = tabCount;
			if(packAge.length)
			{
				var packs:Array = packAge.split(".");
				if(packs.length > 1)
				{
					var pack:String = "";
					for (var i:int = 0; i < packs.length; i++) 
					{
						var path:String = pack+packs[i];
						frist = frist + getTab(tabCount+i)+"(function(" + packs[i] + "){\n";
						last = "\n"+getTab(tabCount+i)+"})(" + path + " || (" + path + " = {}));" + last;
						pack += packs[i]+".";
						newTabCount++;
					}	
				}
			}
			return [frist,last,newTabCount];
		}
		override protected function toGetSetFunction(tabCount:int):String
		{
			var functionString:String = "";	
			var gets:Vector.<String> = new Vector.<String>();
			var sets:Vector.<String> = new Vector.<String>();
			for (var i:int = 0; i < functions.length; i++) 
			{
				var funName:String = functions[i].name;
				if(functions[i].type == CodeFunction.TYPE_GET)
				{
					var getString:String;
					if(sets.indexOf(getSetString(tabCount,funName.replace(".get",".set"),functions[i].IsStatic)) != -1)
					{
						getString = getSetString(tabCount,funName.replace(".get",".set"),functions[i].IsStatic).replace(",null",","+packAge+(packAge.length?".":"")+name+(functions[i].IsStatic?"":".prototype")+"[\""+funName+"\"]");
						functionString = functionString.replace(getSetString(tabCount,funName.replace(".get",".set"),functions[i].IsStatic),"");
					}
					else
					{
						getString = getGetString(tabCount,funName,functions[i].IsStatic);	
					}
					if(gets.indexOf(getGetString(tabCount,funName,functions[i].IsStatic)) == -1)
					{
						gets.push(getString);
						functionString += getString;	
					}
				}
				if(functions[i].type == CodeFunction.TYPE_SET)
				{
					var setString:String;
					if(gets.indexOf(getGetString(tabCount,funName.replace(".set",".get"),functions[i].IsStatic)) != -1)
					{
						setString = getGetString(tabCount,funName.replace(".set",".get"),functions[i].IsStatic).replace(",null",","+packAge+(packAge.length?".":"")+name+(functions[i].IsStatic?"":".prototype")+"[\""+funName+"\"]");
						functionString = functionString.replace(getGetString(tabCount,funName.replace(".set",".get"),functions[i].IsStatic),"");
					}
					else
					{
						setString = getSetString(tabCount,funName,functions[i].IsStatic);	
					}
					if(sets.indexOf(getSetString(tabCount,funName,functions[i].IsStatic)) == -1)
					{
						sets.push(setString);
						functionString += setString;
					}
				}
			}
			return functionString;
		}
		private function getGetString(tabCount:int,funName:String,isStatic:Boolean):String
		{
			return getTab(tabCount)+"d(p"+",\""+funName.replace(".get","")+"\"," +
				"p[\""+funName+"\"],null);\n";
		}
		private function getSetString(tabCount:int,funName:String,isStatic:Boolean):String
		{
			return getTab(tabCount)+"d(p"+",\""+funName.replace(".set","")+"\",null," +
				"p[\""+funName+"\"]);\n";
		}
	}
}