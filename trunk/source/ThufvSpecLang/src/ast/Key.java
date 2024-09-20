package ast;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class Key extends AstNode {
	String table;
	String key;
	
	public String getTable()
	{
		return table;
	}
	
	public String getKey()
	{
		return key;
	}
	
	public Key(String table, String key)
	{
		this.table = table;
		this.key = key;
	}
	
	@Override
	public String toString()
	{
		return String.format("%s.%s", table, key);
	}
}