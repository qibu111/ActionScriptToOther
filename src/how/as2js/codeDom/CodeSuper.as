package how.as2js.codeDom
{
	public class CodeSuper extends CodeObject
	{
		public var superObject:CodeObject;
		override public function outJS(tabCount:int):String
		{
			superObject.owner = owner;
			if(superObject is CodeCallFunction)
			{
				return "this.base()";
			}
			else
			{
				var result:String = superObject.out(tabCount);
				if(result.substring(0,5) != "this.")
				{
					result = "this."+result;
				}
				return result;	
			}
		}
		override public function outEgret(tabCount:int):String
		{
			superObject.owner = owner;
			var result:String = "";
			if(superObject is CodeCallFunction)
			{
				var member:CodeMember = (superObject as CodeCallFunction).member as CodeMember;
				if(member && !member.parent)//说明是构造
				{
					var superParam:Vector.<CodeObject> = (superObject as CodeCallFunction).parameters;
					var thisParam:Vector.<CodeObject> = new Vector.<CodeObject>();
					thisParam.push(new CodeMember("this"));
					(superObject as CodeCallFunction).parameters = thisParam.concat(superParam);
					result = "_super.call" + superObject.out(tabCount)+";\n";
					result += getTab(tabCount)+"this[\".init\"]()";
				}
				else
				{
					result = "_super.prototype." + superObject.out(tabCount) + ".call(this)";
				}
				return result;
			}
			else
			{
				insertString = ".call";
				result = "_super." + superObject.out(tabCount);
				return result;	
			}
		}
		override public function outCocos(tabCount:int):String
		{
			superObject.owner = owner;
			if(superObject is CodeCallFunction)
			{
				return "this._super()";
			}
			else
			{
				var result:String = superObject.out(tabCount);
				if(result.substring(0,5) != "this.")
				{
					result = "this."+result;
				}
				return result;	
			}
		}
	}
}