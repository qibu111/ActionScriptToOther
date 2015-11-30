package how.as2js.error
{
	import how.as2js.compiler.Token;
	import how.as2js.compiler.TokenType;

	public class ParseError extends Error
	{
		public function ParseError(token:Token,message:String="")
		{
			var msg:String = " Line:" + (token.SourceLine+1) + "  Column:" + token.SourceChar + "  Type:" + TokenType.getTypeName(token.Type) + "  value[" + token.Lexeme + "]    " + message;
			super(!token?message:msg);
		}
	}
}