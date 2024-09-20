package ast;

import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class UnaryBitVecOperator extends BitVecNode {
	private final UnaryTemporalType type;
	int length;
	
	public UnaryBitVecOperator(UnaryTemporalType type, AstNode e)
	{
		this.type = type;
		this.addOutgoing(e);
		this.length = getBitVecNodeLength(e);
	}
	
	@Override
	public String toString()
	{
		String op = "??";
		if (type == UnaryTemporalType.old) {
			op = "old";
		}
	 	
		String result = "( ";
		
		if (op.equals("old")) {
			result += op + "(" + getOutgoingNodes().get(0).toString() + ")";
		} else {
			result += op + getOutgoingNodes().get(0).toString();
		}
		result += " )";
		return result;
	}
	
	public UnaryTemporalType getType()
	{
		return type;
	}
}
