package how.as2js.runtime
{
	import flash.utils.Dictionary;
	
	import how.as2js.Config;
	import how.as2js.codeDom.CodeClass;

	public class Runtime
	{
		private var _classes:Dictionary = new Dictionary();
		public function Runtime()
		{
		}
		public function getClasses(packAge:String):Vector.<CodeClass>
		{
			var result:Vector.<CodeClass> = new Vector.<CodeClass>();
			if(packAge && _classes[packAge])
			{
				var classes:Dictionary = _classes[packAge];
				for (var key:String in classes) 
				{
					result.push(classes[key]);
				}
			}
			return result;
		}
		public function getClass(packAge:String,className:String):CodeClass
		{
			if(packAge)
			{
				if(_classes[packAge])
				{
					return _classes[packAge][className];
				}
				else
				{
					return null;
				}
			}
			else
			{
				return _classes[className];
			}
		}
		public function registerClass(codeClass:CodeClass):void
		{
			if(codeClass.packAge.length)
			{
				_classes[codeClass.packAge] = _classes[codeClass.packAge] || new Dictionary();
				_classes[codeClass.packAge][codeClass.name] = codeClass;
			}
			else
			{
				_classes[codeClass.name] = codeClass;
			}
		}
		public function unRegisterClass(codeClass:CodeClass):void
		{
			if(codeClass.packAge)
			{
				delete _classes[codeClass.packAge][codeClass.name];
			}
			else
			{
				delete _classes[codeClass.name];
			}
		}
		public function outClass(modol:int = 1):String
		{
			var result:String = "";
			Config.modol = modol;
			for (var key:String in _classes) 
			{
				var codeClass:CodeClass;
				if(_classes[key] is CodeClass)
				{
					codeClass = _classes[key];
					result += codeClass.outClass(this)+"\n";
				}
				for(var className:String in _classes[key])
				{
					codeClass = _classes[key][className];
					result += codeClass.outClass(this)+"\n";
				}
			}
			return result;
		}
	}
}