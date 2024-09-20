package ast;

public class Apply extends Predicate {
	String table;
	String action;
	public Apply(String table) {
		this.table = table;
	}
	public Apply(String table, String action) {
		this.table = table;
		this.action = action;
	}
	
	public String getTable()
	{
		return table;
	}
	
	public String getAction()
	{
		return action;
	}
	
	@Override
	public String toString()
	{
		if(action == null)
			return String.format("apply.%s", table);
		else
			return String.format("apply.%s.%s", table, action);
	}
	
	@Override
	public PredicateType getType()
	{
		return PredicateType.apply;
	}
}
