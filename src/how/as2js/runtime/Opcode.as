package how.as2js.runtime
{
	public class Opcode
	{
		//定义一个类
		public static const Class:int = 0;
		//继承
		public static const Extends:int = 1;
		//赋值操作
		public static const MOV:int = 2;
		//申请一个局部变量
		public static const VAR:int = 3;
		//执行If语句
		public static const CALL_IF:int = 4;
		//执行For语句
		public static const CALL_FOR:int = 5;
		//执行For语句
		public static const CALL_FORSIMPLE:int = 6;
		//执行Foreach语句
		public static const CALL_FOREACH:int = 7;
		//执行Foreach语句
		public static const CALL_FORIN:int = 8;
		//执行While语句
		public static const CALL_WHILE:int = 9;
		//执行switch语句
		public static const CALL_SWITCH:int = 10;
		//执行try catch语句
		public static const CALL_TRY:int = 11;
		//调用一个函数
		public static const CALL_FUNCTION:int = 12;
		//throw
		public static const THROW:int = 13;
		//解析一个变量
		public static const RESOLVE:int = 14;
		//返回值
		public static const RET:int = 15;
		//break跳出 for foreach while
		public static const BREAK:int = 16;
		//continue跳出本次 for foreach while
		public static const CONTINUE:int = 17;
		//实例化
		public static const NEW:int = 18;
		//父类
		public static const SUPER:int = 19;
	}
}