package how.as2js
{
	public class Utils
	{
		private static var es6to5:Class;
		public static function IsLetter(str:String):Boolean
		{			
			if (new RegExp("[A-Za-z]").test(str)){ 
				return true; 
			}else{ 
				return false; 
			}
		}
		public static function IsDigit(str:String):Boolean
		{
			if (new RegExp("[0-9]").test(str)){ 
				return true; 
			}else{ 
				return false; 
			}
		}
		public static function IsNullOrEmpty(str:String):Boolean
		{
			return str == null || str == "";
		}
		public static function IsLetterOrDigit(str:String):Boolean
		{
			if (new RegExp("[A-Za-z0-9]").test(str)){ 
				return true; 
			}else{ 
				return false; 
			} 
		}
	}
}