package ast;

public class Drop extends Predicate {
	public Drop() {
	}
	
	@Override
	public String toString()
	{
		return "drop";
	}
	
	@Override
	public PredicateType getType()
	{
		return PredicateType.drop;
	}
}
