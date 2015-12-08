package how.as2js.codeDom
{
	import how.as2js.codeDom.temp.TempData;

	public class CodeExecutable extends CodeObject
	{
		public static const Block_Class:int = 0;
		public static const Block_None:int = 1;
		public static const Block_Block:int = 2;
		public static const Block_Function:int = 3;
		public static const Block_If:int = 4;
		public static const Block_ForBegin:int = 5;
		public static const Block_ForLoop:int = 6;
		public static const Block_For:int = 7;
		public static const Block_Foreach:int = 8;
		public static const Block_While:int = 9;
		public static const Block_Switch:int = 10;
		private var _block:int;

		public function get block():int
		{
			return _block;
		}

		public var instructions:Vector.<CodeInstruction>;       //指令列表
		private var _count:int;
		/**
		 * 指令数量
		 */
		public function get count():int
		{
			return _count;
		}
		public var parent:CodeExecutable;									//父指令
		public var tempData:TempData;
		public var currentIndex:int = 0;
		public function CodeExecutable(block:int,parent:CodeExecutable = null)
		{
			this.parent = parent;
			_block = block;
			instructions = new Vector.<CodeInstruction>();
		}
		
		//添加一条指令
		public function addInstruction(val:CodeInstruction):void
		{ 
			val.owner = this;
			instructions.push(val); 
		}
		//指令添加完成
		public function endInstruction():void {
			_count = instructions.length;
		}
		public function getInstruction(index:int):CodeInstruction
		{
			return instructions[index];
		}
		override public function outJS(tabCount:int):String
		{
			var result:String = "";
			for (currentIndex = 0; currentIndex < instructions.length; currentIndex++) 
			{
				result += instructions[currentIndex].out(tabCount);
			}
			return result;
		}
		override public function outEgret(tabCount:int):String
		{
			var result:String = hasSuper()?"":getTab(tabCount)+"this[\".init\"]();\n";
			result = "";
			for (currentIndex = 0; currentIndex < instructions.length; currentIndex++) 
			{
				result += instructions[currentIndex].out(tabCount);
			}
			return result;
		}
		protected function hasSuper():Boolean
		{
			for (var i:int = 0; i < instructions.length; i++) 
			{
				if(instructions[i].operand0 is CodeSuper)
				{
					return true;
				}
			}
			return false;
		}
	}
}