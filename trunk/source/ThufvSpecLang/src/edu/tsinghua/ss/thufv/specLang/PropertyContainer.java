package edu.tsinghua.ss.thufv.specLang;

import java.util.Map;

import de.uni_freiburg.informatik.ultimate.boogie.symboltable.BoogieSymbolTable;
import de.uni_freiburg.informatik.ultimate.core.model.models.IElement;
import de.uni_freiburg.informatik.ultimate.core.model.models.IPayload;
import de.uni_freiburg.informatik.ultimate.core.model.models.annotation.IAnnotations;

public class PropertyContainer implements IElement {
	private static final long serialVersionUID = -9201814281168356656L;

	public static class VerificationProperty implements IPayload {
		private static final long serialVersionUID = -340874972143576373L;
		private String fairness;
		private String liveness;
		
		public VerificationProperty(String fairness, String liveness) {
			this.fairness = fairness;
			this.liveness = liveness;
		}
		
		public String getLiveness() {
			return liveness;
		}
		
		public String getFairness() {
			return fairness;
		}
		
		public boolean hasLiveness() {
			return liveness != null;
		}
		
		public boolean hasFairness() {
			return fairness != null;
		}

		@Override
		public Map<String, IAnnotations> getAnnotations() {
			return null;
		}

		@Override
		public boolean hasAnnotation() {
			return false;
		}
	}
	
	private VerificationProperty prop;
	private BoogieSymbolTable symbolTable;
	
	public PropertyContainer(String livenessProp, BoogieSymbolTable table) {
		prop = new VerificationProperty(null, livenessProp);
		symbolTable = table;
	}
	
	public PropertyContainer(String fairnessProp, String livenessProp, BoogieSymbolTable table) {
		prop = new VerificationProperty(fairnessProp, livenessProp);
		symbolTable = table;
	}

	public BoogieSymbolTable getBoogieSymbolTable() {
		return symbolTable;
	}
	
	@Override
	public IPayload getPayload() {
		return prop;
	}

	@Override
	public boolean hasPayload() {
		return prop != null;
	}

}
