package how.as2js.runtime
{
	import flash.utils.Dictionary;
	
	import how.as2js.codeDom.CodeClass;

	public class Runtime
	{
		private var _classes:Dictionary = new Dictionary();
		public function Runtime()
		{
		}
		public function getClass(classPath:String):CodeClass
		{
			return _classes[classPath];
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
	}
}