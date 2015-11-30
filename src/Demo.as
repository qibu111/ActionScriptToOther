package how.demo
{
	import flash.events.Event;
	public class Demo extends TitleWindow
	{
		static private var stValue:String = "3213";
		private var nameLength:int = 321;
		private var _name:String;
		public function Demo()
		{
			for( ; ; )
			{
				continue;
				Demo.stFunc(name,stValue,null);
				nameLength = age;
			}
			var is:int= 0;
			egret.setTimeout(function a(){
				
			},this,300);
			var sex = "男";
		}
		private function test(aaa:int,bbb:int):void
		{
			if(name == stValue && _name != null)
			{
				Demo.stFunc(name,stValue,null);
				nameLength = age;
				nameLength = name;
				_name = "忍者";
				var type:String = "武士";   
			}
			else if(_name)
			{
				Demo.stFunc(name,stValue,null);
				nameLength = age;
			}
			else if(age)
			{
				Demo.stFunc(name,stValue,null);
				nameLength = age;
			}
			else if(name)
			{
				Demo.stFunc(name,stValue,null);
				nameLength = age;
			}
			else
			{
				Demo.stFunc(name,stValue,null);
				nameLength = age;
			}
			var name = 2;
			super.name = 3;
		}
		private function get name():String
		{
			return _name;
		}
		private function set name(value:String):void
		{
			_name = value;
		}
		static private function get age():String
		{
			return _age;
		}
		static private function set age(value:String):void
		{
			_age = value;
		}
		private static function stFunc():void
		{
			switch(this.stFunc())
			{
				case 1:case 2:
					trace(123);
					break;
				case 2:
					trace(123);
					break;
				case 3:
					trace(123);
					break;
				default:
					trace(age);//静态方法内，会自动转成this
					break;
			}
			while(true)
			{
				
			}
			for each(var i in obj)
			{
				trace(i);
			}
			try
			{
				var a = 1/0;
			}
			catch(e:Error)
			{
				trace(a);
			}
			var a = new Error("发生错误！").text();
		}
	}
}