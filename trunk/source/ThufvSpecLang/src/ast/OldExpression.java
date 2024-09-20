package ast;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class OldExpression extends AstNode {
	final static String OLD_PREFIX = "_old_";
	String identifier;
	
	public String getIdent()
	{
		return identifier;
	}
	
	public OldExpression(String identifier)
	{
		this.identifier = identifier;
	}
	
	@Override
	public String toString()
	{
		return OLD_PREFIX + identifier;
	}
}