package how.as2js.codeDom
{
	import flash.utils.Dictionary;

	public class CodeFunction extends CodeObject
	{
		public static const TYPE_NORMAL:int = 0;
		public static const TYPE_GET:int = 1;
		public static const TYPE_SET:int = 2;
		public var type:int;
		public var IsStatic:Boolean;
		public var listParameters:Vector.<String>;              //参数
		public var listParameterTypes:Vector.<CodeMember>;              //参数类型
		public var listValues:Vector.<CodeObject>;//默认值
		public var executable:CodeExecutable;//函数执行命令
		private var parameterCount:int;                       //参数个数
		private var params:Boolean;                       //参数个数
		public var name:String;
		public var isCtor:Boolean;//是否是构造函数
		public var bindString:String = "";
		public function CodeFunction(strName:String,listParameters:Vector.<String>,listParameterTypes:Vector.<CodeMember>,listValues:Vector.<CodeObject>,executable:CodeExecutable,bParams:Boolean,IsStatic:Boolean,type:int)
		{
			this.name = strName;
			this.type = type;
			this.IsStatic = IsStatic;
			this.listParameters = listParameters;
			this.listParameterTypes = listParameterTypes;
			this.listValues = listValues;
			this.executable = executable;
			this.parameterCount = listParameters.length;
			this.params = bParams;
		}
		override public function toES5(tabCount:int):String
		{
			if(owner)
			{
				executable.tempData = owner.tempData;	
			}
			executable.tempData.tempData = new Dictionary();
			var valuesString:String = "";
			for (var i:int = 0; i < listValues.length; i++)
			{
				valuesString += getTab(tabCount+1) + listParameters[i] +  " = " + listParameters[i]+"!=null||"+listParameters[i]+"!=undefined?"+listParameters[i]+":" + listValues[i].toES5(0) + ";\n";
			}
			return "function "+name+"("+toParam(tabCount)+")"+getLeftBrace(tabCount)+bindString+valuesString+executable.toES5(tabCount+1)+getTab(tabCount)+"}";
		}
		protected function toParam(tabCount:int):String
		{
			var paramString:String = "";
			for (var i:int = 0; i < listParameters.length; i++) 
			{
				if(params && i == parameterCount - 1)
				{
					paramString = paramString + "..." + listParameters[i];
				}
				else
				{
					paramString += listParameters[i];	
				}
				executable.tempData.tempData[paramString] = null;
				if(i<listParameters.length-1)
				{
					paramString += ",";
				}
			}
			return paramString;
		}
	}
}