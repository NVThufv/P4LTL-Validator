package ast;

import java.math.BigInteger;

public class Forward extends Predicate {
	final static String EGRESS_PORT = "standard_metadata.egress_port";
	
	String port;
	public Forward(BigInteger port) {
		this.port = port.toString();
	}
	
	public Forward(String port) {
		this.port = port;
	}
	
	@Override
	public String toString()
	{
		return "(" + EGRESS_PORT + " == " + port + ")";
	}
	
	@Override
	public PredicateType getType()
	{
		return PredicateType.fwd;
	}
	
	public String getPort()
	{
		return port;
	}
}
