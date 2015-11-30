package how.as2js.codeDom
{
	public class CodeSuper extends CodeObject
	{
		public var superObject:CodeObject;
		override public function toES5(tabCount:int):String
		{
			superObject.owner = owner;
			if(superObject is CodeCallFunction)
			{
				return "this.base()";
			}
			else
			{
				var result:String = superObject.toES5(tabCount);
				if(result.substring(0,5) != "this.")
				{
					result = "this."+result;
				}
				return result;	
			}
		}
	}
}