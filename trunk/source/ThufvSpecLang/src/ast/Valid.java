package ast;

public class Valid extends Predicate {
	final static String VALID_MAP = "isValid";
	
	String header;
	
	public String getHeader()
	{
		return header;
	}
	
	public Valid(String header) {
		this.header = header;
	}
	
	@Override
	public String toString()
	{
//		return "(" + VALID_MAP + "[" + header + "] == 1)";
		return header + ".valid";
	}
	
	@Override
	public PredicateType getType()
	{
		return PredicateType.valid;
	}
}
