package how.as2js.error
{
	import how.as2js.compiler.Token;
	import how.as2js.compiler.TokenType;

	public class ParseError extends Error
	{
		public function ParseError(token:Token,message:String="")
		{
			var msg:String = " Line:" + (token.sourceLine+1) + "  Column:" + token.sourceChar + "  Type:" + TokenType.getTypeName(token.type) + "  value[" + token.lexeme + "]    " + message;
			super(!token?message:msg);
		}
	}
}