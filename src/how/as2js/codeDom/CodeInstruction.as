package how.as2js.codeDom
{
	import how.as2js.runtime.Opcode;

	public class CodeInstruction extends CodeObject
	{
		private var _opcode:int;

		public function get opcode():int
		{
			return _opcode;
		}

		private var _operand0:CodeObject;

		public function get operand0():CodeObject
		{
			return _operand0;
		}

		private var _operand1:CodeObject;

		public function get operand1():CodeObject
		{
			return _operand1;
		}

		private var _value:Object;

		public function get value():Object
		{
			return _value;
		}
		public function CodeInstruction(opcode:int,operand0:CodeObject = null,operand1:CodeObject = null,value:Object = null)
		{
			this._opcode = opcode;
			this._operand0 = operand0;
			this._operand1 = operand1;
			this._value = value;
		}
		
		override public function out(tabCount:int):String
		{
			var result:String = "";
			switch (opcode)
			{
				case Opcode.VAR: result += convertVar(tabCount); break;
//				case Opcode.MOV: ProcessMov(); break;
				case Opcode.RET: result += convertRet(tabCount); break;
				case Opcode.RESOLVE: result += convertResolve(tabCount); break;
				case Opcode.CONTINUE: result += convertContinue(tabCount); break;
				case Opcode.BREAK: result += convertBreak(tabCount); break;
				case Opcode.CALL_FUNCTION: result += convertCallFunction(tabCount); break;
				case Opcode.CALL_IF: result += convertCallIf(tabCount); break;
				case Opcode.CALL_FOR: result += convertCallFor(tabCount); break;
				case Opcode.CALL_FORSIMPLE: result += convertCallForSimple(tabCount); break;
				case Opcode.CALL_FOREACH: result += convertCallForeach(tabCount); break;
				case Opcode.CALL_FORIN: result += convertCallForin(tabCount); break;
				case Opcode.CALL_WHILE: result += convertCallWhile(tabCount); break;
				case Opcode.CALL_SWITCH: result += convertCallSwitch(tabCount); break;
				case Opcode.CALL_TRY: result += convertTry(tabCount); break;
				case Opcode.THROW: result += convertThrow(tabCount); break;
				case Opcode.NEW: result += convertNew(tabCount); break;
				case Opcode.SUPER: result += convertSuper(tabCount); break;
				case Opcode.DELETE: result += convertDelete(tabCount); break;
			}
			return result;
		}
		protected function convertVar(tabCount:int):String
		{
			var name:String = value+"";
			owner.tempData.tempData[name] = null;
			var nextInstruction:CodeInstruction = owner.instructions[owner.currentIndex+1];
			if(nextInstruction && nextInstruction._operand0 is CodeAssign && ((nextInstruction._operand0 as CodeAssign).member.memberString == name))
			{
				nextInstruction._operand0.owner = owner;
				owner.currentIndex++;
				return getTab(tabCount)+"var "+nextInstruction._operand0.out(0)+";\n";
			}
			else
			{
				return getTab(tabCount)+"var "+name+" = null;\n";
			}
		}
		protected function convertResolve(tabCount:int):String
		{
			operand0.owner = owner;
			var result:String = getTab(tabCount)+operand0.out(tabCount)+";\n";
			return result;
		}
		protected function convertRet(tabCount:int):String
		{
			if(operand0)
			{
				operand0.owner = owner;
				return getTab(tabCount)+"return "+operand0.out(tabCount)+";\n";
			}
			else
			{
				return getTab(tabCount)+"return;\n";
			}
		}
		protected function convertCallFunction(tabCount:int):String
		{
			operand0.owner = owner;
			return getTab(tabCount)+operand0.out(tabCount)+";\n";
		}
		protected function convertCallIf(tabCount:int):String
		{
			operand0.owner = owner;
			return operand0.out(tabCount)+"\n";
		}
		protected function convertCallFor(tabCount:int):String
		{
			operand0.owner = owner;
			return operand0.out(tabCount)+"\n";
		}
		protected function convertCallForSimple(tabCount:int):String
		{
			operand0.owner = owner;
			return operand0.out(tabCount)+"\n";
		}
		protected function convertContinue(tabCount:int):String
		{
			return getTab(tabCount)+"continue;\n";
		}
		protected function convertBreak(tabCount:int):String
		{
			return getTab(tabCount)+"break;\n";
		}
		protected function convertCallWhile(tabCount:int):String
		{
			operand0.owner = owner;
			return operand0.out(tabCount)+"\n";
		}
		protected function convertCallSwitch(tabCount:int):String
		{
			operand0.owner = owner;
			return operand0.out(tabCount)+"\n";
		}
		protected function convertCallForeach(tabCount:int):String
		{
			operand0.owner = owner;
			return operand0.out(tabCount)+"\n";
		}
		protected function convertCallForin(tabCount:int):String
		{
			operand0.owner = owner;
			return operand0.out(tabCount)+"\n";
		}
		protected function convertTry(tabCount:int):String
		{
			operand0.owner = owner;
			return operand0.out(tabCount)+"\n";
		}
		protected function convertThrow(tabCount:int):String
		{
			operand0.owner = owner;
			return getTab(tabCount)+operand0.out(tabCount)+";\n";
		}
		protected function convertNew(tabCount:int):String
		{
			operand0.owner = owner;
			return getTab(tabCount)+operand0.out(tabCount)+";\n";
		}
		protected function convertSuper(tabCount:int):String
		{
			operand0.owner = owner;
			return getTab(tabCount)+operand0.out(tabCount)+";\n";
		}
		protected function convertDelete(tabCount:int):String
		{
			operand0.owner = owner;
			return getTab(tabCount)+operand0.out(tabCount)+";\n";
		}
	}
}