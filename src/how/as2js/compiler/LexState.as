package how.as2js.compiler
{
	public class LexState
	{
		//没有关键字
		public static const None:int = -1;
		//= 等于或者相等
		public static const AssignOrEqual:int = 1;
		/// 注释或者除号
		public static const CommentOrDivideOrAssignDivide:int = 2;
		//行注释
		public static const LineComment:int = 3;
		//区域注释开始
		public static const BlockCommentStart:int = 4;
		//区域注释结束
		public static const BlockCommentEnd:int = 5;
		//.或者多参符(...)
		public static const PeriodOrParams:int = 6;
		//多参符(...)
		public static const Params:int = 7;
		//+ 或者 ++ 或者 +=
		public static const PlusOrIncrementOrAssignPlus:int = 8;
		//- 或者 -=
		public static const MinusOrDecrementOrAssignMinus:int = 9;
		//* 或者 *=
		public static const MultiplyOrAssignMultiply:int = 10;
		//% 或者 %=
		public static const ModuloOrAssignModulo:int = 11;
		//& 或者 &= 或者 &&
		public static const AndOrCombine:int = 12;
		//| 或者 |= 或者 ||
		public static const OrOrInclusiveOr:int = 13;
		//^ 或者 ^=
		public static const XorOrAssignXor:int = 14;
		//<< 或者 <<=
		public static const ShiOrAssignShi:int = 15;
		//>> 或者 >>=
		public static const ShrOrAssignShr:int = 16;
		//! 非或者不等于
		public static const NotOrNotEqual:int = 17;
		//> 大于或者大于等于
		public static const GreaterOrGreaterEqual:int = 18;
		//< 小于或者小于等于
		public static const LessOrLessEqual:int = 19;
		//" 字符串
		public static const String:int = 20;
		//\ 格式符
		public static const StringEscape:int = 21;
		//' 字符串 单引号开始结束</summary>
		public static const SingleString:int = 22;
		//\ 格式符</summary>
		public static const SingleStringEscape:int = 23;
		//@ 开始字符串
		public static const SimpleStringStart:int = 24;
		//@" 不格式化的字符串 类似c# @符号
		public static const SimpleString:int = 25;
		//字符串内出现"是引号还是结束符
		public static const SimpleStringQuotationMarkOrOver:int = 26;
		//@" 不格式化的字符串 类似c# @符号
		public static const SingleSimpleString:int = 27;
		//字符串内出现"是引号还是结束符
		public static const SingleSimpleStringQuotationMarkOrOver:int = 28;
		//十进制数字或者十六进制数字
		public static const NumberOrHexNumber:int = 29;
		//十进制数字
		public static const Number:int = 30;
		//十六进制数字
		public static const HexNumber:int = 31;
		//描述符
		public static const Identifier:int = 32;
	}
}