package ast;

import java.util.ArrayList;

import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;

public class Arguments extends AstNode {

	ArrayList<AstNode> args;
	
	public Arguments() {
		this.args = new ArrayList<AstNode>();
	}
	
	public Arguments(AstNode arg) {
		if (arg instanceof Arguments) {
			this.args = ((Arguments) arg).getArgs();
		} else {
			this.args = new ArrayList<AstNode>();
			this.args.add(arg);
		}
		this.addAllOutgoing(args);
	}
	
	public Arguments(AstNode arg, AstNode args) {
		if (args instanceof Arguments) {
			this.args = ((Arguments) args).getArgs();
			this.args.add(0, arg);
		}
		this.addAllOutgoing(this.args);
	}
	
	public ArrayList<AstNode> getArgs() {
		return this.args;
	}
	
	public void setArgs(ArrayList<AstNode> args) {
		this.args = args;
	}
	
	@Override
	public String toString() {
		String str = "";
		for (AstNode a : args) {
			str += a.toString();
		}
		return str;
	}
		
}
