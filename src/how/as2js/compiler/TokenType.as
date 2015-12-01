package how.as2js.compiler
{
	import flash.utils.describeType;

	public final class TokenType
	{
		
		public static function getTypeName(value:int):Object
		{
			var tokenXMLList:XMLList= describeType(TokenType).variable;
			for (var i:int = 0; i < tokenXMLList.length(); i++) 
			{
				if(TokenType[tokenXMLList[i].@name.toString()] == value)
				{
					return tokenXMLList[i].@name;
				}
			}
			return null;
		}
		//空类型（没有实际用途）		
		public static var None:int = 0;		
		//var		
		public static var Var:int = 1;		
		//var		
		public static var Const:int = 2;		
		//{		
		public static var LeftBrace:int = 3;		
		//}		
		public static var RightBrace:int = 4;		
		//(		
		public static var LeftPar:int = 5;		
		//)		
		public static var RightPar:int = 6;		
		//[		
		public static var LeftBracket:int = 7;		
		//]		
		public static var RightBracket:int = 8;		
		//.		
		public static var Period:int = 9;		
		//:int = 0;		
		public static var Comma:int = 10;		
		//:		
		public static var Colon:int = 11;		
		//;		
		public static var SemiColon:int = 12;		
		//?		
		public static var QuestionMark:int = 13;		
		//+		
		public static var Plus:int = 14;		
		//++		
		public static var Increment:int = 15;		
		//+=		
		public static var AssignPlus:int = 16;		
		//-		
		public static var Minus:int = 17;		
		//--		
		public static var Decrement:int = 18;		
		//-=		
		public static var AssignMinus:int = 19;		
		//*		
		public static var Multiply:int = 20;		
		//*=		
		public static var AssignMultiply:int = 21;		
		///		
		public static var Divide:int = 22;		
		///=		
		public static var AssignDivide:int = 23;		
		//% 模运算		
		public static var Modulo:int = 24;		
		//%=		
		public static var AssignModulo:int = 25;		
		//| 或运算		
		public static var InclusiveOr:int = 26;		
		//|=		
		public static var AssignInclusiveOr:int = 27;		
		//||		
		public static var Or:int = 28;		
		//& 并运算		
		public static var Combine:int = 29;		
		//&=		
		public static var AssignCombine:int = 30;		
		//&&		
		public static var And:int = 31;		
		//^ 异或		
		public static var XOR:int = 32;		
		//^=		
		public static var AssignXOR:int = 33;		
		//<<左移		
		public static var Shi:int = 34;		
		//<<=		
		public static var AssignShi:int = 35;		
		//>> 右移		
		public static var Shr:int = 36;		
		//>>=		
		public static var AssignShr:int = 37;		
		//!		
		public static var Not:int = 38;		
		//=		
		public static var Assign:int = 39;		
		//==		
		public static var Equal:int = 40;		
		//!=		
		public static var NotEqual:int = 41;		
		//>		
		public static var Greater:int = 42;		
		//>=		
		public static var GreaterOrEqual:int = 43;		
		// <		
		public static var Less:int = 44;		
		//<=		
		public static var LessOrEqual:int = 45;		
		//...		
		public static var Params:int = 46;		
		//if		
		public static var If:int = 47;		
		//else		
		public static var Else:int = 48;		
		//for		
		public static var For:int = 49;
		//final		
		public static var Final:int = 50;		
		//dynamic		
		public static var Dynamic:int = 51;		
		//each		
		public static var Each:int = 52;		
		//in		
		public static var In:int = 53;		
		//switch		
		public static var Switch:int = 54;		
		//case		
		public static var Case:int = 55;		
		//default		
		public static var Default:int = 56;		
		//break		
		public static var Break:int = 57;		
		//continue		
		public static var Continue:int = 58;		
		//return		
		public static var Return:int = 59;		
		//while		
		public static var While:int = 60;		
		//function		
		public static var Function:int = 61;		
		//try		
		public static var Try:int = 62;		
		//catch		
		public static var Catch:int = 63;		
		//throw		
		public static var Throw:int = 64;		
		//bool true false		
		public static var Boolean:int = 65;		
		//int float		
		public static var Number:int = 66;		
		//string		
		public static var String:int = 67;		
		//null		
		public static var Null:int = 68;		
		//包定义		
		public static var Package:int = 69;		
		//类定义		
		public static var Class:int = 70;		
		//接口定义		
		public static var Interface:int = 71;		
		//公共		
		public static var Public:int = 72;		
		//保护		
		public static var Protected:int = 73;		
		//私有		
		public static var Private:int = 74;		
		//包内		
		public static var Internal:int = 75;		
		//继承		
		public static var Extends:int = 76;		
		//静态		
		public static var Static:int = 77;		
		//重写		
		public static var Override:int = 78;		
		//实例		
		public static var New:int = 79;		
		//无返回值		
		public static var Void:int = 80;		
		//引入		
		public static var Import:int = 81;		
		//get		
		public static var Get:int = 82;		
		//set		
		public static var Set:int = 83;		
		//super		
		public static var Super:int = 84;		
		//说明符		
		public static var Identifier:int = 85;		
		//结束
		public static var Finished:int = 86;
		//is
		public static var Is:int = 87;
		//as
		public static var As:int = 88;		
	}
}