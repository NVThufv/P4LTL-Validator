package ast;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class P4LTLAtomicProposition extends AstNode {
	
	AstNode p;
	
	public AstNode getProposition()
	{
		return p;
	}
	
	public P4LTLAtomicProposition(AstNode predicate)
	{
		this.p = predicate;
		this.addOutgoing(this.p);
	}
	
	@Override
	public String toString() {
		return "AP(" + p.toString() + ")";
	}
}
