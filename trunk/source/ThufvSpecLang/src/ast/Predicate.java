package ast;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;

import org.eclipse.osgi.framework.util.Headers;

import de.uni_freiburg.informatik.ultimate.boogie.ast.BitvecLiteral;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Procedure;
import de.uni_freiburg.informatik.ultimate.boogie.ast.VarList;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.Name;
import edu.tsinghua.ss.thufv.specLang.ThufvSpecLangObserver;

public abstract class Predicate extends AstNode {
//	PredicateType type;
//	Arguments args;
	
//	final static String EGRESS_PORT = "standard_metadata.egress_port";
//	final static int EGRESS_PORT_BIT_LENGTH = 9;
//	final static String VALID_MAP = "isValid";
//	
//	public Predicate(PredicateType type, BigInteger val) throws Exception{
//		// fwd(d) => fwd(EGRESS_PORT == d bv-EGRESS_PORT_BIT_LENGTH)
//		assert type == PredicateType.fwd : "Error predicate type: " + type;
//		this.type = type;
//		Name port = new Name(EGRESS_PORT);
//		BitVec port_val = new BitVec(val, EGRESS_PORT_BIT_LENGTH);
//		ExtendedComparativeOperator equality = new ExtendedComparativeOperator(ExtendedComparativeType.eq, port, port_val);
//		this.args = new Arguments(equality);
//    	
//    }
//	
//    public Predicate(PredicateType type, final AstNode args) throws Exception{
//    	this.type = type;
//    	this.args = (Arguments) args;
//		this.addOutgoing(args);
//		
//		if(this.type == PredicateType.valid_before || this.type == PredicateType.valid_after)
//		{
//			// change name to valid map accessor
//			ArrayList<AstNode> newArgs = new ArrayList<AstNode> ();
//			for(int i = 0; i < this.args.getArgs().size(); ++i)
//			{
//				Name id = (Name)this.args.getArgs().get(i);
//				newArgs.add(new ArrayAccessExpr(new Name(VALID_MAP), id));
//			}
//			this.args.setArgs(newArgs);
//		}
//    }
//    
//	public Predicate(final PredicateType type) throws Exception {
//		this.type = type;
//		this.args = null;
//	}
	
	public String getBoogieName()
	{
		assert false: "Trying to invoke discarded function: getBoogieName()";
		return "Discarded";
	}
	
//	public String getOp() {
//		String op = "??";
//		switch (this.type) {
//			case drop:
//				op = "drop";
//				break;
//			case fwd:
//				op = "fwd";
//				break;
//			case ipmask:
//				op = "ipmask";
//				break;
//			default:
//				throw new IllegalArgumentException();
//		}
//		return op;
//	}

//		String identifier = this.getOp();
//		if(args != null)
//		{
//			switch (getType()) {
//				case modify:
//				case match:
//				case fwd:
//					// match_h1_v1_h2_v2....
//					// TODO: fix arg order
//					identifier += "_";
//					for (AstNode arg: args.getArgs())
//					{
//						ExtendedComparativeOperator eq = (ExtendedComparativeOperator) arg;
//						for(AstNode eq_oprand: eq.getOutgoingNodes())
//						{
//							identifier += normalizeString(eq_oprand.toString()) + "_";
//						}
//					}
//					identifier = identifier.substring(0, identifier.length()-1);	// pop last "_"
//					break;
//				case valid_after:
//				case valid_before:
//					identifier += "_";
//					for (AstNode arg: args.getArgs())
//					{
//						ArrayAccessExpr accessExpr = (ArrayAccessExpr) arg;
//						for(AstNode access_id: accessExpr.getOutgoingNodes())
//						{
//							identifier += normalizeString(access_id.toString()) + "_";
//						}
//					}
//					identifier = identifier.substring(0, identifier.length()-1);	// pop last "_"
//				default:
//					break;
//			}
//			
//		}
//		return identifier;

//	// normalize string
//	private static String normalizeString(String s)
//	{
//		return s.replace('(', '_').replace(',', '_').replace('[', '_').replace("]", "").replace(" ", "").replace(")", "");
//	}
	
//	public Arguments getArgs() {
//		return args;
//	}
	
	public abstract PredicateType getType();
	
//	@Override
//	public boolean euqals(Object o) {
//		if(this == o) return true;
//		if(o == null || getClass() != o.getClass()) return false;
//		Predicate p = (Predicate) o;
//		return this.toString() == p.toString();
//	}
}
