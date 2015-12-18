package how.as2js.codeDom
{
	import flash.utils.Dictionary;
	
	import how.as2js.Config;
	import how.as2js.codeDom.temp.TempData;
	import how.as2js.runtime.Runtime;
	

	public class CodeClass extends CodeObject
	{
		public var modifierType:int;//修饰符
		public var name:String;//类名
		public var parent:String;//父类
		public var packAge:String;//包名
		public var isDynamic:Boolean;//是否是动态类
		public var isFinal:Boolean;//是否是终级类
		public var imports:Vector.<String> = new Vector.<String>();//导入列表
		public var variables:Vector.<CodeVariable> = new Vector.<CodeVariable>();
		public var functions:Vector.<CodeFunction> = new Vector.<CodeFunction>();							//父指令
		public var tempData:TempData = new TempData();
		protected var runTime:Runtime;
		public function get classPath():String
		{
			if(packAge.length)
			{
				return packAge+"."+name;
			}
			else
			{
				return name;
			}
		}
		public function outClass(runTime:Runtime):String
		{
			this.runTime = runTime;
			return out(0);
		}
		override public function out(tabCount:int):String
		{
			tabCount++;
			setTempData();
			return getBody(tabCount);
		}
		protected function getBody(tabCount:int):String
		{
			return toPackage(tabCount-1)+packAge+(packAge.length?".":"")+name+" = "+toParent()+".extend"+(Config.leftBraceNextLine?"\n":"")+"({\n"+toBindFunction(tabCount)+toVariable(tabCount)+toFunction(tabCount)+"})\n"+toGetSetFunction(tabCount-1)+toStaticVariable(tabCount-1)+toStaticFunction(tabCount-1);
		}
		public function toParent():String
		{
			if(parent)
			{
				return tempData.importTempData[parent]?tempData.importTempData[parent]:parent;
			}
			else
			{
				return "Class";
			}
		}
		protected function toPackage(tabCount:int):String
		{
			var result:String = "";
			if(packAge.length)
			{
				var packs:Array = packAge.split(".");
				result = ""+packs[0]+" = "+packs[0]+" || {};\n";
				tempData.thisTempData[packs[0]] = null;
				if(packs.length > 1)
				{
					var pack:String = packs[0]+".";
					for (var i:int = 1; i < packs.length; i++) 
					{
						result = getTab(tabCount)+result + pack+packs[i]+" = "+pack+packs[i]+" || {};\n";
						pack += packs[i]+".";
					}	
				}
			}
			return result;
		}
		protected function toImport(tabCount:int):String
		{
			var importString:String = "";
			if(packAge)
			{
				imports.push(packAge+"."+name);	
			}
			for (var i:int = 0; i < imports.length; i++) 
			{
				var importItems:Array = imports[i].split('.');
				tempData.importTempData[importItems[importItems.length-1]] = imports[i];
			}
			return getTab(tabCount)+"import:function()"+getLeftBrace(tabCount)+importString+getTab(tabCount)+"},\n";
		}
//		protected function toImport2(tabCount:int):String
//		{
//			var importString:String = "";
//			if(packAge)
//			{
//				imports.push(packAge+"."+name);	
//			}
//			for (var i:int = 0; i < imports.length; i++) 
//			{
//				var importItems:Array = imports[i].split('.');
//				tempData.thisTempData[importItems[importItems.length-1]] = null;
//				importString += getTab(tabCount+1)+"this."+importItems[importItems.length-1]+" = "+imports[i]+";\n";
//			}
//			return getTab(tabCount)+"import:function()"+getLeftBrace(tabCount)+importString+getTab(tabCount)+"},\n";
//		}
		protected function setTempData():void
		{
			tempData.tempData = new Dictionary();
			tempData.thisTempData = new Dictionary();
			tempData.staticTempData = new Dictionary();
			tempData.importTempData = new Dictionary();
			tempData.staticTempData[".this"] = packAge+(packAge.length?".":"")+name;
			for (var i:int = 0; i < variables.length; i++) 
			{
				if(!variables[i].isStatic)
				{
					tempData.thisTempData[variables[i].key] = null;
				}
				else
				{
					tempData.staticTempData[variables[i].key] = null;
				}
			}
			for (i = 0; i < functions.length; i++) 
			{
				var funName:String = functions[i].name;
				if(!functions[i].IsStatic && functions[i].name != name)
				{
					if(functions[i].type == CodeFunction.TYPE_GET)
					{
						tempData.thisTempData[funName.replace(".get","")] = null;
					}
					else if(functions[i].type == CodeFunction.TYPE_SET)
					{
						tempData.thisTempData[funName.replace(".get","")] = null;
					}
					else
					{
						tempData.thisTempData[funName] = null;	
					}
				}
				else
				{
					if(functions[i].type == CodeFunction.TYPE_GET)
					{
						tempData.staticTempData[funName.replace(".get","")] = null;
					}
					else if(functions[i].type == CodeFunction.TYPE_SET)
					{
						tempData.staticTempData[funName.replace(".get","")] = null;
					}
					else
					{
						tempData.staticTempData[funName] = null;	
					}
				}
			}
			var importString:String = "";
			if(packAge)
			{
				imports.push(packAge+"."+name);	
			}
			for (i = 0; i < imports.length; i++) 
			{
				var importItems:Array = imports[i].split('.');
				tempData.importTempData[importItems[importItems.length-1]] = imports[i];
			}
			var samePackageClass:Vector.<CodeClass> = runTime.getClasses(packAge);
			for (var j:int = 0; j < samePackageClass.length; j++) 
			{
				tempData.importTempData[samePackageClass[j].name] = samePackageClass[j].classPath;
			}
			if(parent)
			{
				this.copyTemData();
			}
		}
		public function copyTemData():void
		{
			var parentClass:CodeClass = runTime.getClass(tempData.importTempData[parent],parent);
			if(!parentClass)
			{
				return;
			}
			for (var i:int = 0; i < parentClass.functions.length; i++) 
			{
				if(!tempData.thisTempData.hasOwnProperty(parentClass.functions[i].name) && parentClass.functions[i].name != parentClass.name &&  !parentClass.functions[i].IsStatic)
				{
					tempData.thisTempData[parentClass.functions[i].name] = parentClass.functions[i].name;
				}
			}
			for (var j:int = 0; j < parentClass.variables.length; j++) 
			{
				if(!tempData.thisTempData.hasOwnProperty(parentClass.variables[j].key) && !parentClass.variables[j].isStatic)
				{
					tempData.thisTempData[parentClass.variables[j].key] = parentClass.variables[j].key;
				}
			}
			
		}
		protected function toVariable(tabCount:int):String
		{
			var variableString:String = "";
			for (var i:int = 0; i < variables.length; i++) 
			{
				if(!variables[i].isStatic)
				{
					var value:String = variables[i].value?variables[i].value.out(0):"null";
					variableString += getTab(tabCount)+variables[i].key+":"+value+",\n";	
				}
			}
			return variableString;
		}
		protected function toFunction(tabCount:int):String
		{
			var functionString:String = "";	
			for (var i:int = 0; i < functions.length; i++) 
			{
				if(!functions[i].IsStatic)
				{
					functions[i].executable.tempData = tempData;
					functions[i].isCtor = functions[i].name==name;
					if(functions[i].isCtor)
					{
						functions[i].insertString = toInsertFunction(tabCount+1);
					}
					var funName:String = functions[i].isCtor?"init":functions[i].name;
					funName = functions[i].type == CodeFunction.TYPE_GET || functions[i].type == CodeFunction.TYPE_SET?"\""+funName+"\"":funName;
					functionString += getTab(tabCount)+funName+":"+functions[i].out(tabCount)+",\n";
				}
			}
			return functionString;
		}
		protected function toStaticVariable(tabCount:int):String
		{
			var variableString:String = "";
			for (var i:int = 0; i < variables.length; i++) 
			{
				if(variables[i].isStatic)
				{
					var value:String = variables[i].value?variables[i].value.out(0):"null";
					variableString += getTab(tabCount)+packAge+(packAge.length?".":"")+name+"."+variables[i].key+" = "+value+";\n";	
				}
			}
			return variableString;
		}
		protected function toStaticFunction(tabCount:int):String
		{
			var functionString:String = "";	
			for (var i:int = 0; i < functions.length; i++) 
			{
				if(functions[i].IsStatic)
				{
					functions[i].executable.tempData = new TempData();
					functions[i].executable.tempData.staticTempData = new Dictionary();
					functions[i].executable.tempData.thisTempData = tempData.staticTempData;
					functions[i].executable.tempData.importTempData = tempData.importTempData;
					var funName:String = functions[i].name;
					functionString += getTab(tabCount)+packAge+(packAge.length?".":"")+name+"[\""+funName+"\"] = "+functions[i].out(tabCount)+"\n";
				}
			}
			return functionString;
		}
		protected function toBindFunction(tabCount:int):String
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
			return getTab(tabCount)+"binds:function()"+getLeftBrace(tabCount)+bindString+getTab(tabCount)+"},\n";
		}
		protected function toInsertFunction(tabCount:int):String
		{
			var insertString:String = "";
			if(Config.bind)
			{
				insertString += getTab(tabCount)+"this.binds();\n";
			}
			return insertString;
		}
		protected function toGetSetFunction(tabCount:int):String
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
			return getTab(tabCount)+"Object.defineProperty("+packAge+(packAge.length?".":"")+name+(isStatic?"":".prototype")+",\""+funName.replace(".get","")+"\"," +
				packAge+"."+name+".prototype[\""+funName+"\"],null);\n";
		}
		private function getSetString(tabCount:int,funName:String,isStatic:Boolean):String
		{
			return getTab(tabCount)+"Object.defineProperty("+packAge+(packAge.length?".":"")+name+(isStatic?"":".prototype")+",\""+funName.replace(".set","")+"\",null," +
				packAge+"."+name+".prototype[\""+funName+"\"]);\n";
		}
	}
}