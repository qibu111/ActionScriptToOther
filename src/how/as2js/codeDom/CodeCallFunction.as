package how.as2js.codeDom
{
	public class CodeCallFunction extends CodeObject
	{
		public var member:CodeObject;
		public var parameters:Vector.<CodeObject>;
		override public function toES5(tabCount:int):String
		{
			member.owner = owner;
			var arg:String = "";
			for (var i:int = 0; i < parameters.length; i++) 
			{
				parameters[i].owner = owner;
				arg += parameters[i].toES5(tabCount);
				if(i != parameters.length - 1)
				{
					arg += ",";
				}
			}
			return member.toES5(tabCount) + "(" + arg + ")";
		}
	}
}