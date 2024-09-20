package ast;

import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class ExtendedComparativeOperator extends AstNode {
	
	ExtendedComparativeType type;
	AstNode left, right;
	
	public ExtendedComparativeOperator(final ExtendedComparativeType type, final AstNode left, final AstNode right) {
		this.left = left;  addOutgoing(left);
		this.right = right; addOutgoing(right);
		this.type = type;
	}
	
	@Override
	public String toString() {
		String op = "??";
		switch (type) {
			case eq:
				op = "==";
				break;
			case gt:
				op = ">";
				break;
			case geq:
				op = ">=";
				break;
			case neq:
				op = "!=";
				break;
			case leq:
				op = "<=";
				break;
			case lt:
				op = "<";
				break;
			default:
				throw new IllegalArgumentException();
		}

		// It should be guarded by Jflex and Javacup that it is an header equation: header = mask
		if(getOutgoingNodes().get(1) instanceof IPMask)
		{
			IPMask mask = (IPMask) getOutgoingNodes().get(1);
			String maskString = "[32:" + mask.getLSB() + "]";
			return getOutgoingNodes().get(0).toString() + maskString + op + getOutgoingNodes().get(1).toString() + maskString;
		}
		
		return getOutgoingNodes().get(0).toString() + op + getOutgoingNodes().get(1).toString();
	}
	
	public ExtendedComparativeType getType() {
		return type;
	}
	
	public AstNode getLeft()
	{
		return left;
	}
	
	public AstNode getRight()
	{
		return right;
	}
}
