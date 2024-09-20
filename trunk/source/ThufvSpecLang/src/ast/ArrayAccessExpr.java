package ast;

import java.util.ArrayList;
import java.util.List;

import de.uni_freiburg.informatik.ultimate.boogie.ast.Unit;
import de.uni_freiburg.informatik.ultimate.boogie.symboltable.BoogieSymbolTable;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class ArrayAccessExpr extends AstNode {

	ArrayList<AstNode> accessors = new ArrayList<AstNode>();
	AstNode name;
	
	public ArrayList<AstNode> getAccessors()
	{
		return accessors;
	}
	
	public AstNode getName()
	{
		return name;
	}
	
	public ArrayAccessExpr(final AstNode name, final AstNode accessor) {
		this.name = name; this.addOutgoing(name);
		accessors.add(accessor); this.addOutgoing(accessor);
	}
	
	public ArrayAccessExpr(final AstNode name, final AstNode accessor1, final AstNode accessor2) {
		this.name = name; this.addOutgoing(name);
		accessors.add(accessor1); this.addOutgoing(accessor1);
		accessors.add(accessor2); this.addOutgoing(accessor2);		
	}
	
	public ArrayAccessExpr(final AstNode name, final AstNode accessor1, final AstNode accessor2, final AstNode accessor3) {
		this.name = name; this.addOutgoing(name);
		accessors.add(accessor1); this.addOutgoing(accessor1);
		accessors.add(accessor2); this.addOutgoing(accessor2);	
		accessors.add(accessor3); this.addOutgoing(accessor3);
	}
	
	public String toString() {
		List<AstNode> nodes = this.getOutgoingNodes();
		String name = nodes.get(0).toString();
		String accessor = nodes.get(1).toString();
		String str = name + "[" + accessor + "]";
		if (nodes.size() >= 3) {
			str += "[" + nodes.get(2).toString() + "]";
		}
		if(nodes.size() >= 4) {
			str += "[" + nodes.get(3).toString() + "]";
		}
		return str;
	}
}
