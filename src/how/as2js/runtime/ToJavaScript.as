package how.as2js.runtime
{
	import how.as2js.codeDom.CodeClass;

	public class ToJavaScript
	{
		public function ToJavaScript()
		{
		}
		public function to(codeClass:CodeClass):void
		{
			var imports:Vector.<String> = codeClass.imports;
		}
		private function getVar(key:String):String
		{
			return "var " + key + ";";
		}
	}
}