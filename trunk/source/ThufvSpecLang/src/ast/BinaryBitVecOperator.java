package ast;

import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.BinaryType;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.Name;

public class BinaryBitVecOperator extends BitVecNode {
	private final BinaryType type;
	
	public BinaryBitVecOperator(BinaryType type, AstNode left, AstNode right)
	{
		this.type = type;
		this.addOutgoing(left);
		this.addOutgoing(right);
		
		int leftBitLength = getBitVecNodeLength(left);
		int rightBitLength = getBitVecNodeLength(right);
		if(leftBitLength == -1)
			leftBitLength = rightBitLength;
		if(rightBitLength == -1)
			rightBitLength = leftBitLength;
		
		if(leftBitLength != rightBitLength)
		{
			throw new IllegalArgumentException("Left node and right node doesn't match bit length."
					+ " Left: " + left.toString() + " Right: " + right.toString());
		}
		else {
			this.length = leftBitLength;
			if(this.length == -1)
			{
				throw new IllegalArgumentException("Both operands are Identifier."
						+ " Try `1bv{length} - 1bv{length} + expr` sugar to hint the parser about the length.");
			}
		}
	}
	
	public String getBitOp()
	{
		String op = " ?? ";
		if (type == BinaryType.plus) {
			op = "add.bv" + length;
		} else if (type == BinaryType.minus) {
			op = "minus.bv" + length;
		}
		return op;
	}
	
	@Override
	public String toString()
	{
		String op = getBitOp();
	 	
		String result = op + "( ";
		int i = 0;
		for(; i < getOutgoingNodes().size()-1; i++)
		{
			result += getOutgoingNodes().get(i).toString() + ",";
		}
		result += getOutgoingNodes().get(i).toString();
		result += " )";
		return result;
	}
	
	public BinaryType getType()
	{
		return type;
	}
}
