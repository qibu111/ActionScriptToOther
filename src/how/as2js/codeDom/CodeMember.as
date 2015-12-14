package how.as2js.codeDom
{
	public class CodeMember extends CodeObject
	{
		public static const TYPE_NULL:int = 0;//空
		public static const TYPE_STRING:int = 1;//String
		public static const TYPE_NUMBER:int = 2;//Number类型
		public static const TYPE_OBJECT:int = 3;//对象类型
		public var parent:CodeObject;//父成员
		public var memberObject:CodeObject;//成员值，this[object]
		public var memberString:String;//成员值，this["key"]
		public var memberNumber:Number;//成员值，this[0]
		public var type:int = TYPE_NULL;//成员类型
		public var calc:int;//前后标识
		public var memType:CodeObject;
		public function CodeMember(name:String = null,member:CodeObject = null,num:Number = 0,parent:CodeObject = null)
		{
			if(name)
			{
				this.parent = parent;
				this.memberString = name;
				this.type = TYPE_STRING;	
			}
			else if(member)
			{
				this.parent = parent;
				this.memberObject = member;
				this.type = TYPE_OBJECT;	
			}
			else
			{
				this.parent = parent;
				this.memberNumber = num;
				this.type = TYPE_NUMBER;
			}
		}
		override public function out(tabCount:int):String
		{
			var thisString:String = "";
			if(!parent)
			{
				if(!owner.tempData.tempData.hasOwnProperty(memberString))
				{
					if(owner.tempData.thisTempData.hasOwnProperty(memberString))
					{
						thisString = "this.";	
					}
					else if(owner.tempData.staticTempData.hasOwnProperty(memberString))
					{
						return owner.tempData.staticTempData[".this"];
					}
					else if(owner.tempData.importTempData.hasOwnProperty(memberString))
					{
						return owner.tempData.importTempData[memberString];
					}
				}
			}
			else
			{
				parent.owner = owner;	
			}
			var mem:Object;
			if(type == TYPE_STRING)
			{
				mem = memberString;
			}
			else if(type == TYPE_OBJECT)
			{
				var codeMember:CodeMember = memberObject as CodeMember;
				if(codeMember)
				{
					codeMember.owner = owner;
					mem = codeMember.out(0);
				}
				else
				{
					mem = memberObject;
				}
			}
			else if(type == TYPE_NUMBER)
			{
				mem = memberNumber;
			}
			else
			{
				mem = "";
			}
			if(calc == CALC.POST_DECREMENT)
			{
				mem = mem+"--";
			}
			else if(calc == CALC.PRE_DECREMENT)
			{
				mem = "--"+mem;
			}
			else if(calc == CALC.POST_INCREMENT)
			{
				mem = mem+"++";
			}
			else if(calc == CALC.PRE_INCREMENT)
			{
				mem = "++"+mem;
			}
			if(parent)
			{
				if(this.type == TYPE_STRING)
				{
					return parent.out(tabCount)+"."+mem;	
				}
				else
				{
					return parent.out(tabCount)+"["+mem+"]";
				}
			}
			else
			{
				return thisString+mem+"";
			}
		}
	}
}