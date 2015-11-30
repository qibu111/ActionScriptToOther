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
----------------------以下是导出结果----------------------
how = how || {};
how.demo = how.demo || {};
how.demo.Demo = Class.extend
	({
		Event:flash.events.Event,
		Demo:how.demo.Demo,
		nameLength:321,
		_name:null,
		init:function Demo()
		{
			this.test = this.test.bind(this);
			this.stFunc = this.stFunc.bind(this);
			for(;;)
			{
			}
			var is = 0;
			egret.setTimeout(function a()
			{
			},this,300);
			var sex = "男";
		},
		test:function test(aaa,bbb)
		{
			if(this.name == how.demo.Demo.stValue && this._name != null)
			{
				this.Demo.stFunc(this.name,how.demo.Demo.stValue,null);
				this.nameLength = how.demo.Demo.age;
				this.nameLength = this.name;
				this._name = "忍者";
				var type = "武士";
				
			}
			else if(this._name)
			{
				this.Demo.stFunc(this.name,how.demo.Demo.stValue,null);
				this.nameLength = how.demo.Demo.age;
				
			}
			else if(how.demo.Demo.age)
			{
				this.Demo.stFunc(this.name,how.demo.Demo.stValue,null);
				this.nameLength = how.demo.Demo.age;
				
			}
			else if(this.name)
			{
				this.Demo.stFunc(this.name,how.demo.Demo.stValue,null);
				this.nameLength = how.demo.Demo.age;
				
			}
			else
			{
				this.Demo.stFunc(this.name,how.demo.Demo.stValue,null);
				this.nameLength = how.demo.Demo.age;
				
			}
			var name = 2;
			this.name = 3;
		},
		".getname":function .getname()
		{
			return this._name;
		},
		".setname":function .setname(value)
		{
			this._name = value;
		},
	})
	Object.defineProperty(how.demo.Demo.prototype,"name",how.demo.Demo.prototype[".getname"],how.demo.Demo.prototype[".setname"]);
Object.defineProperty(how.demo.Demo,"age",how.demo.Demo.prototype[".getage"],how.demo.Demo[".setage"]);
how.demo.Demo.stValue = 3213,
	how.demo.Demo[".getage"] = function .getage()
{
	return _age;
}
how.demo.Demo[".setage"] = function .setage(value)
{
	_age = value;
}
how.demo.Demo["stFunc"] = function stFunc()
{
	switch(this.stFunc())
	{
		case 1:
		case 2:
			trace(123);
			break;
		case 2:
			trace(123);
			break;
		case 3:
			trace(123);
			break;
		default:
			trace(this.age);
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
		var a = 1 / 0;
	}
	catch(e)
	{
		trace(a);
	}
	var a = new Error(发生错误！).text();
}





