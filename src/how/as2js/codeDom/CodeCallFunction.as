package how.as2js.codeDom
{
	public class CodeCallFunction extends CodeObject
	{
		public var member:CodeObject;
		public var parameters:Vector.<CodeObject>;
		override public function outJS(tabCount:int):String
		{
			member.owner = owner;
			var arg:String = "";
			for (var i:int = 0; i < parameters.length; i++) 
			{
				parameters[i].owner = owner;
				arg += parameters[i].out(tabCount);
				if(i != parameters.length - 1)
				{
					arg += ",";
				}
			}
			return member.out(tabCount) + "(" + arg + ")";
		}
		override public function outEgret(tabCount:int):String
		{
			member.owner = owner;
			var arg:String = "";
			for (var i:int = 0; i < parameters.length; i++) 
			{
				parameters[i].owner = owner;
				arg += parameters[i].out(tabCount);
				if(i != parameters.length - 1)
				{
					arg += ",";
				}
			}
			return member.out(tabCount) + insertString + "(" + arg + ")";
		}
	}
}