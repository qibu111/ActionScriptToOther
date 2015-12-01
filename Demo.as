----------------------假如as3里面这么写----------------------
package how.demo
{
	import flash.events.Event;
	public class Demo extends TitleWindow
	{
		static private var stValue:String = "3213";
		private var nameLength:int = 321;
		private var _name:String;
		public function Demo(defValue0:int = 3,defValue1:String = "默认参数")
		{
			var a = "123";
			trace(defValue);
			if(1 as Number){}
			for(var key:String in Object)
			{
				
			}
			for( ; ; )
			{
				continue;
				Demo.stFunc(name,stValue,null);
				nameLength = age;
			}
			var sss:int= 0;
			egret.setTimeout(function a(){
				
			},this,300);
			var sex = "男";
			super();
		}
		private function test(aaa:int,bbb:int,...args):void
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
				case age:
					trace(123);
					break;
				case stFunc():
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
			throw new Error(123);
			delete a.b;
			if(a == undefined)
			{
				
			}
		}
	}
}
----------------------以下是导出结果----------------------
how = how || {};
how.demo = how.demo || {};
how.demo.Demo = Class.extend({
	Event:flash.events.Event,
	Demo:how.demo.Demo,
	nameLength:321,
	_name:null,
	init:function Demo(defValue0,defValue1){
		this.test = this.test.bind(this);
		this.stFunc = this.stFunc.bind(this);
		defValue0 = defValue0!=null||defValue0!=undefined?defValue0:3;
		defValue1 = defValue1!=null||defValue1!=undefined?defValue1:"默认参数";
		var a = "123";
		trace(defValue);
		if((1 instanceof Number)?1:null)){
			
		}
		for(var key in Object){
		}
		for(;;){
		}
		var sss = 0;
		egret.setTimeout(function a(){
		},this,300);
		var sex = "男";
		this.base();
	},
	test:function test(aaa,bbb,...args){
		if(this.name == how.demo.Demo.stValue && this._name != ){
			this.Demo.stFunc(this.name,how.demo.Demo.stValue,);
			this.nameLength = how.demo.Demo.age;
			this.nameLength = this.name;
			this._name = "忍者";
			var type = "武士";
			
		}
		else if(this._name){
			this.Demo.stFunc(this.name,how.demo.Demo.stValue,);
			this.nameLength = how.demo.Demo.age;
			
		}
		else if(how.demo.Demo.age){
			this.Demo.stFunc(this.name,how.demo.Demo.stValue,);
			this.nameLength = how.demo.Demo.age;
			
		}
		else if(this.name){
			this.Demo.stFunc(this.name,how.demo.Demo.stValue,);
			this.nameLength = how.demo.Demo.age;
			
		}
		else{
			this.Demo.stFunc(this.name,how.demo.Demo.stValue,);
			this.nameLength = how.demo.Demo.age;
			
		}
		var name = 2;
		this.name = 3;
	},
	".getname":function .getname(){
		return this._name;
	},
	".setname":function .setname(value){
		this._name = value;
	},
})
	Object.defineProperty(how.demo.Demo.prototype,"name",how.demo.Demo.prototype[".getname"],how.demo.Demo.prototype[".setname"]);
Object.defineProperty(how.demo.Demo,"age",how.demo.Demo.prototype[".getage"],how.demo.Demo[".setage"]);
how.demo.Demo.stValue = "3213",
	how.demo.Demo[".getage"] = function .getage(){
		return _age;
	}
how.demo.Demo[".setage"] = function .setage(value){
	_age = value;
}
how.demo.Demo["stFunc"] = function stFunc(){
	switch(this.stFunc()){
		case this.age:
			trace(123);
			break;
		case this.stFunc():
			trace(123);
			break;
		case 3:
			trace(123);
			break;
		default:
			trace(this.age);
			break;
		
	}
	while(){
		
	}
	for each(var i in obj){
		trace(i);
	}
	try{
		var a = 1 / 0;
	}
	catch(e){
		trace(a);
	}
	var a = new Error("发生错误！").text();
	throw new Error(123);
	delete a.b;
	if(a == undefined){
		
	}
}