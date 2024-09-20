/*
 * Copyright (C) 2013-2015 Daniel Dietsch (dietsch@informatik.uni-freiburg.de)
 * Copyright (C) 2015 University of Freiburg
 * Copyright (C) 2015 Vincent Langenfeld (langenfv@informatik.uni-freiburg.de)
 *
 * This file is part of the ULTIMATE LTL2Aut plug-in.
 *
 * The ULTIMATE LTL2Aut plug-in is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * The ULTIMATE LTL2Aut plug-in is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE LTL2Aut plug-in. If not, see <http://www.gnu.org/licenses/>.
 *
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE LTL2Aut plug-in, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP),
 * containing parts covered by the terms of the Eclipse Public License, the
 * licensors of the ULTIMATE LTL2Aut plug-in grant you additional permission
 * to convey the resulting work.
 */
package edu.tsinghua.ss.thufv.specLang;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import javax.swing.text.WrappedPlainView;

import org.apache.commons.io.IOUtils;
import org.json.JSONObject;
import org.json.JSONArray;

import ast.Apply;
import ast.BinaryBitVecOperator;
import ast.Event;
import ast.Fsum;
import ast.Function;
import ast.FunctionCall;
import ast.IPMask;
import ast.Predicate;
import ast.PredicateType;
import de.uni_freiburg.informatik.ultimate.boogie.DeclarationInformation;
import de.uni_freiburg.informatik.ultimate.boogie.annotation.LTLPropertyCheck;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ASTType;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ArrayType;
import de.uni_freiburg.informatik.ultimate.boogie.ast.AssignmentStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.AssumeStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Attribute;
import de.uni_freiburg.informatik.ultimate.boogie.ast.BinaryExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Body;
import de.uni_freiburg.informatik.ultimate.boogie.ast.BooleanLiteral;
import de.uni_freiburg.informatik.ultimate.boogie.ast.IntegerLiteral;
import de.uni_freiburg.informatik.ultimate.boogie.ast.CallStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Declaration;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Expression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.FunctionApplication;
import de.uni_freiburg.informatik.ultimate.boogie.ast.FunctionDeclaration;
import de.uni_freiburg.informatik.ultimate.boogie.ast.GeneratedBoogieAstTransformer;
import de.uni_freiburg.informatik.ultimate.boogie.ast.GotoStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.HavocStatement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.IdentifierExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Label;
import de.uni_freiburg.informatik.ultimate.boogie.ast.LeftHandSide;
import de.uni_freiburg.informatik.ultimate.boogie.ast.ModifiesSpecification;
import de.uni_freiburg.informatik.ultimate.boogie.ast.NamedAttribute;
import de.uni_freiburg.informatik.ultimate.boogie.ast.NamedType;
import de.uni_freiburg.informatik.ultimate.boogie.ast.PrimitiveType;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Procedure;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Specification;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Statement;
import de.uni_freiburg.informatik.ultimate.boogie.ast.StringLiteral;
import de.uni_freiburg.informatik.ultimate.boogie.ast.UnaryExpression;
import de.uni_freiburg.informatik.ultimate.boogie.ast.Unit;
import de.uni_freiburg.informatik.ultimate.boogie.ast.VarList;
import de.uni_freiburg.informatik.ultimate.boogie.ast.VariableDeclaration;
import de.uni_freiburg.informatik.ultimate.boogie.ast.VariableLHS;
import de.uni_freiburg.informatik.ultimate.boogie.ast.WhileStatement;
import de.uni_freiburg.informatik.ultimate.boogie.parser.BoogieSymbolFactory;
import de.uni_freiburg.informatik.ultimate.boogie.preprocessor.PreprocessorAnnotation;
import de.uni_freiburg.informatik.ultimate.boogie.symboltable.BoogieSymbolTable;
import de.uni_freiburg.informatik.ultimate.boogie.type.BoogiePrimitiveType;
import de.uni_freiburg.informatik.ultimate.boogie.type.BoogieType;
import de.uni_freiburg.informatik.ultimate.core.model.models.IBoogieType;
import de.uni_freiburg.informatik.ultimate.core.model.models.IElement;
import de.uni_freiburg.informatik.ultimate.core.model.models.ILocation;
import de.uni_freiburg.informatik.ultimate.core.model.models.ModelType;
import de.uni_freiburg.informatik.ultimate.core.model.observers.IUnmanagedObserver;
import de.uni_freiburg.informatik.ultimate.core.model.services.ILogger;
import de.uni_freiburg.informatik.ultimate.core.model.services.IToolchainStorage;
import de.uni_freiburg.informatik.ultimate.core.model.services.IUltimateServiceProvider;
import de.uni_freiburg.informatik.ultimate.ltl2aut.ast.AstNode;
import de.uni_freiburg.informatik.ultimate.ltl2aut.preferences.PreferenceInitializer;
import edu.tsinghua.ss.thufv.specLang.parse.SpecLangLexer;
import edu.tsinghua.ss.thufv.specLang.parse.SpecLangParser;
import edu.tsinghua.ss.thufv.specLang.parse.P4LTLLexer;
import edu.tsinghua.ss.thufv.specLang.parse.P4LTLParser;

/**
 * This class reads a definition of a property in LTL and returns the AST of the description of the LTL formula as a
 * Buchi automaton.
 *
 * @author Langenfeld
 * @author Daniel Dietsch (dietsch@informatik.uni-freiburg.de)
 */
//public class UtopiaSpecLangObserver implements IUnmanagedObserver {
public class ThufvSpecLangObserver implements IUnmanagedObserver {

	private static final String LTL_MARKER = "#LTLProperty:";
	private static final String LTLVAR_MARKER = "#LTLVariables:";
	private static final String LTLFAIRNESS_MARKER = "#LTLFairness:";
	private static final String CONTROLPLANEINTERFACE_MARKER = "#CPI:";

	// alphabet without X, U, F, G
	private static final String ALPHABET = "ABCDEHIJKLMNOPQRSTVWYZ";

	private final IUltimateServiceProvider mServices;
	private final ILogger mLogger;

	public static String fname;
	
	private String inputFile;
	private LTLPropertyCheck property;
	private BoogieSymbolTable symbolTable;
	private Unit prog;

	private Unit unit;
	private ILocation iloc;
	private ArrayList<Event> processed_events = new ArrayList<Event>();
	private PropertyContainer result;
	private int currentEvent;
	private boolean inFairness;
	
	public ThufvSpecLangObserver(final IUltimateServiceProvider services) {
		mServices = services;
		mLogger = mServices.getLoggingService().getLogger(Activator.PLUGIN_ID);
	}

	@Override
	public void init(final ModelType modelType, final int currentModelIndex, final int numberOfModels) throws Throwable {
		result = null;
		inputFile = null;
		symbolTable = null;
		property = null;
		prog = null;
	}

	@Override
	public void finish() throws Throwable {
		// if there is a check, there is already boogie code
		// the ltl string is in our ACSL format, we should convert it to
		// ltl2aut format see http://www.lsv.ens-cachan.fr/~gastin/ltl2ba/
		// there is no check, so we either need to read the property from the boogie file or from the settings
		// both formats are in ltl2aut format and we need to create a check with boogie-code
		String[] specification = this.getLTLPropertyString();
		String[] fairness_constraint = this.extractFairnessPropertyFromInputFile();
		String[] controlplane_constraint = this.extractControlPlaneInterfaceFromInputFile();
		String[] ltlVarsAndTypes = this.extractLTLVariablesFromInputFile();
		
		instrumentUserVar(ltlVarsAndTypes);
		mLogger.info("P4LTL Spec is: " + specification[0]);
		
		AstNode propertyAstNode = translateP4LTLToLTL(specification[0]);
		AstNode fairnessAstNode = null;
		AstNode CPIAstNode = null;
		
		// getJSON
		JSONObject propertyJSONObject = new JSONObject(propertyAstNode);
		JSONObject fairnessJSONObject = null;
		JSONObject CPIJSONObject = null;
		JSONArray userFreeVars = null;
		if(ltlVarsAndTypes.length > 0)
		{
			userFreeVars = new JSONArray();
			for (int i = 0; i < ltlVarsAndTypes.length; i++) {
				String ltlVarAndType = ltlVarsAndTypes[i];
				String[] split = ltlVarAndType.split(":");
				if (split.length != 2) {
					throw new Exception("No type given in LTLVariable declaration: "+ltlVarAndType);
				}
				String ltlvar = split[0];
				String ltltyp  = split[1];
				userFreeVars.put(new JSONObject(new HashMap<String, String>(){{  
				      put("name", ltlvar);  
				      put("type", ltltyp);       
				}}));
			}
		}	
		JSONObject parsedJSONResult = new JSONObject();
		
		specification[0] = propertyAstNode.toString();
		if (fairness_constraint.length > 0)
		{
			conjunctConstraints(fairness_constraint);
			mLogger.info("P4LTL Fairness Spec is: " + fairness_constraint[0]);
			fairnessAstNode = translateP4LTLToLTL(fairness_constraint[0]);
			fairness_constraint[0] = fairnessAstNode.toString();
			fairnessJSONObject = new JSONObject(fairnessAstNode);
		}
		if (controlplane_constraint.length > 0)
		{
			conjunctConstraints(controlplane_constraint);
			//controlplane_constraint[0] = String.format("[](AP(%s))", controlplane_constraint[0]);
			mLogger.info("Control plane Spec is: " + controlplane_constraint[0]);
			CPIAstNode = translateP4LTLToLTL(controlplane_constraint[0]);
			controlplane_constraint[0] = CPIAstNode.toString();
			CPIJSONObject = new JSONObject(CPIAstNode);
			if (fairness_constraint.length > 0) {
				fairness_constraint[0] = String.format("(%s) && (%s)", fairness_constraint[0], controlplane_constraint[0]);
			}
			else {
				fairness_constraint = new String[1];
				fairness_constraint[0] = controlplane_constraint[0];
			}
		}

		if (fairness_constraint.length > 0) {
			result = new PropertyContainer(fairness_constraint[0], specification[0], symbolTable);
		}
		else {
			result = new PropertyContainer(specification[0], symbolTable);
		}
		
		// This does not actually appear to be necessary, but I'll keep it in for now
		// this.updateModifies();	
		if (specification.length > 1) {
			throw new UnsupportedOperationException(
					"We currently support only one LTL property at a time, but found " + specification.length);
		}
		
		// get json parsed result 
		parsedJSONResult.put(LTL_MARKER, propertyJSONObject);
		parsedJSONResult.put(LTLFAIRNESS_MARKER, fairnessJSONObject);
		parsedJSONResult.put(CONTROLPLANEINTERFACE_MARKER, CPIJSONObject);
		parsedJSONResult.put(LTLVAR_MARKER, userFreeVars);
		final PrintWriter writer = openJSONFile(unit);
		if (writer != null) {
			writer.println(parsedJSONResult.toString());
			writer.close();
		}
	}
	
	
	private PrintWriter openJSONFile(final IElement boogieRoot) {
		String path;
		String filename;
		File file = null;
		final ILocation loc = ILocation.getAnnotation(boogieRoot);
		final File inputFile = new File(loc.getFileName());
		if (inputFile.isDirectory()) {
			path = inputFile.getPath();
		} else {
			path = inputFile.getParent();
		}
		
		try {
			filename = "__p4ltl_ast.json";
			file = new File(path + File.separatorChar + filename);
			if ((!file.isFile() || !file.canWrite()) && file.exists()) {
				mLogger.warn("Cannot write to: " + file.getAbsolutePath());
				return null;
			}

			if (file.exists()) {
				mLogger.info("File already exists and will be overwritten: " + file.getAbsolutePath());
			}
			file.createNewFile();
			mLogger.info("Writing to file " + file.getAbsolutePath());
			return new PrintWriter(new FileWriter(file));

		} catch (final IOException e) {
			mLogger.fatal("Cannot open file: " + file.getAbsolutePath(), e);
			return null;
		}
	}
	
	// conjunct constraint to the first pos
	private void conjunctConstraints(String[] constraints)
	{
		if(constraints.length > 1)
		{
			constraints[0] = String.join(") && (", constraints);
			constraints[0] = "(" + constraints[0] + ")";
		}
	}
	
	// Using regex to translate
	private AstNode translateP4LTLToLTL(String p4ltl) throws Exception {
		mLogger.info("translating P4LTL formula: " + p4ltl);
		AstNode p4ltlAst = p4ltl2Ast(p4ltl);
		// instrumentBoogie(p4ltlAst);
		String regular_ltl = p4ltlAst.toString();
		mLogger.info("translated to regular LTL formula: " + regular_ltl);
		return p4ltlAst;
	}
	
	// complie P4LTL 2 LTL, and instrument user defined vars =
	private String compileP4LTLToLTL(String p4ltl, String[] ltlVarsAndTypes) throws Exception {
		mLogger.info("Compiling formula: " + p4ltl);
		AstNode p4ltlAst = p4ltl2Ast(p4ltl);
		instrumentBoogie(p4ltlAst, ltlVarsAndTypes);	// TODO: set a new method for freevars
		String regular_ltl = p4ltlAst.toString();
		mLogger.info("Compiled to formula: " + regular_ltl);
		return regular_ltl;
	}

	private AstNode p4ltl2Ast(String p4ltl) throws Exception {
		mLogger.info(String.format("Starting to parse P4LTL Formula to AstNode: %s", p4ltl));
		final InputStreamReader isReader = new InputStreamReader(IOUtils.toInputStream(p4ltl));
		try {
			P4LTLLexer lexer = new P4LTLLexer(isReader);		
			AstNode spec = (AstNode) new P4LTLParser(lexer).parse().value;
			mLogger.info("Successfully lexed and parsed: " + p4ltl);
			return spec;
		} catch (final Exception ex) {
			mLogger.fatal("Exception during parsing of P4LTL formula: " + p4ltl, ex);
			throw ex;
		} 
	}
	
	private void instrumentUserVar(String[] ltlVarsAndTypes) throws Exception
	{
		if(ltlVarsAndTypes.length == 0)
			return;
		Unit newProg = unit;
		// add user defined vars
		String[] ltlvars = new String[ltlVarsAndTypes.length];
		String[] ltltyps = new String[ltlVarsAndTypes.length];
		
		// Add global variables for ltlvars
		for (int i = 0; i < ltlVarsAndTypes.length; i++) {
			String ltlVarAndType = ltlVarsAndTypes[i];
			String[] split = ltlVarAndType.split(":");
			if (split.length != 2) {
				throw new Exception("No type given in LTLVariable declaration: "+ltlVarAndType);
			}
			String ltlvar = split[0];
			String ltltyp  = split[1];
			ltlvars[i] = ltlvar;
			ltltyps[i] = ltltyp;
			newProg = addGlobalVar(ltlvar, ltltyp, newProg);
			mLogger.info("Add user free var: " + ltlvar);
		}
		
		// instrument variable set
		boolean ultimateStartSet = false;
		for (Declaration d : newProg.getDeclarations()) {
			if (d instanceof Procedure) {
				Procedure p = (Procedure) d;
				String pname = p.getIdentifier();
				Body b = p.getBody();
				// init vars
				if(pname == "ULTIMATE.start")
				{
					ultimateStartSet = true;
					if(b != null) {
						// havoc user defined free var
						for (int i = 0; i < ltlvars.length; i++ ) {
							String ltlvar = ltlvars[i];
							String ltltyp = ltltyps[i];
							havocGlobalVar(b, ltlvar, ltltyp);
						}
					} 
					if(p.getSpecification() != null) {
						for (int i = 0; i < ltlvars.length; i++ ) {
							String ltlvar = ltlvars[i];
							this.addModifies(ltlvar, p);
						}
					}
					
				}
			}
		}
		
		// add ULTIMATE.start
		if(!ultimateStartSet)
		{
			Body b = new Body(iloc, new VariableDeclaration[0], new Statement[0]);
			Procedure p_nobody = new Procedure(iloc, new Attribute[0], "ULTIMATE.start", new String[0], new VarList[0], new VarList[0], new Specification[0], null);
			Procedure main = this.fetchProcedure("mainProcedure");
			p_nobody.setSpecification(main.getSpecification().clone());
			if(b != null) {
				// havoc user defined free var
				for (int i = 0; i < ltlvars.length; i++ ) {
					String ltlvar = ltlvars[i];
					String ltltyp = ltltyps[i];
					havocGlobalVar(b, ltlvar, ltltyp);
				}
			} 
			if(p_nobody.getSpecification() != null) {
				for (int i = 0; i < ltlvars.length; i++ ) {
					String ltlvar = ltlvars[i];
					this.addModifies(ltlvar, p_nobody);
				}
			}
			
			CallStatement call = new CallStatement(iloc, false, new VariableLHS[0], "mainProcedure", new Expression[0]);
			Statement[] call_block = {call};
			Statement[] block = this.addStatementArrays(b.getBlock(), call_block, b.getBlock().length);
			b.setBlock(block);
			Procedure p_body = new Procedure(iloc, new Attribute[0], "ULTIMATE.start", new String[0], new VarList[0], new VarList[0], null, b);
			Declaration[] decs = newProg.getDeclarations();
			Declaration[] new_decs = new Declaration[decs.length+2];
			for (int i = 0; i < decs.length; i++) {
				new_decs[i] = decs[i];
			}
			new_decs[decs.length] = p_nobody;
			new_decs[decs.length+1] = p_body;
			newProg.setDeclarations(new_decs);
		}
		
	}
	
	private void instrumentBoogie(AstNode p4ltlAst) throws Exception {
		Unit newProg = unit;
		ArrayList<Predicate> predicates = this.getPredicates(p4ltlAst, new ArrayList<Predicate>());
		for(int i = 0; i < predicates.size(); ++i)
		{
			Predicate predicate = predicates.get(i);
			switch (predicate.getType()) {
				case ipmask:
					addGlobalVar(((IPMask) predicate).toString(), "bool", newProg);
					mLogger.info("Add global declaration: " + ((IPMask) predicate).toString());
					break;
				default:
					predicates.remove(i); i--;
					mLogger.info("Default: No need to instrument " + predicate.toString());
					break;
			}
		}
		
		// instrument variable set
		boolean ultimateStartSet = false;
		for (Declaration d : newProg.getDeclarations()) {
			if (d instanceof Procedure) {
				Procedure p = (Procedure) d;
				String pname = p.getIdentifier();
				Body b = p.getBody();
				
				// main --- the main part of packet processing
				// mainProcedure --- the harness
				if ((pname == "main" || pname == "mainProcedure") && p.getSpecification() != null)
				{
					for (Predicate predicate : predicates) {
						this.addModifies(predicate.toString(), p);
					}
				}
				if (pname == "main" && b != null) {
					for (Predicate predicate : predicates) {
						instrumentVariableSet(p, b, predicate);	
					}			
				}
				
				// init vars
				if(pname == "ULTIMATE.start")
				{
					ultimateStartSet = true;
					if(b != null) {
						for(Predicate predicate: predicates)
						{
							initGlobalVar(b,predicate);
						}
					} 
					if(p.getSpecification() != null) {
						for(Predicate predicate: predicates)
						{
							this.addModifies(predicate.toString(), p);
						}
					}
					
				}
			}
		}
		
		// add ULTIMATE.start
		if(!ultimateStartSet)
		{
			Body b = new Body(iloc, new VariableDeclaration[0], new Statement[0]);
			Procedure p_nobody = new Procedure(iloc, new Attribute[0], "ULTIMATE.start", new String[0], new VarList[0], new VarList[0], new Specification[0], null);
			Procedure main = this.fetchProcedure("mainProcedure");
			p_nobody.setSpecification(main.getSpecification().clone());
			for (Predicate predicate: predicates) {
				initGlobalVar(b,predicate);
				this.addModifies(predicate.getBoogieName(), p_nobody);
			}
			
			CallStatement call = new CallStatement(iloc, false, new VariableLHS[0], "mainProcedure", new Expression[0]);
			Statement[] call_block = {call};
			Statement[] block = this.addStatementArrays(b.getBlock(), call_block, b.getBlock().length);
			b.setBlock(block);
			Procedure p_body = new Procedure(iloc, new Attribute[0], "ULTIMATE.start", new String[0], new VarList[0], new VarList[0], null, b);
			Declaration[] decs = newProg.getDeclarations();
			Declaration[] new_decs = new Declaration[decs.length+2];
			for (int i = 0; i < decs.length; i++) {
				new_decs[i] = decs[i];
			}
			new_decs[decs.length] = p_nobody;
			new_decs[decs.length+1] = p_body;
			newProg.setDeclarations(new_decs);
		}
	}
	
	private void instrumentBoogie(AstNode p4ltlAst, String[] ltlVarsAndTypes) throws Exception {
		Unit newProg = unit;
		ArrayList<Predicate> predicates = this.getPredicates(p4ltlAst, new ArrayList<Predicate>());
		for(int i = 0; i < predicates.size(); ++i)
		{
			Predicate predicate = predicates.get(i);
			switch (predicate.getType()) {
//				case modify:
//				case match:
				case fwd:
//				case valid_after:
//				case valid_before:
					addGlobalVar(predicate.getBoogieName(), "bool", newProg);
					mLogger.info("Add global declaration: " + predicate.getBoogieName());
					
					break;
				default:
					predicates.remove(i); i--;
					mLogger.info("Defalut: No need to instrument " + predicate.getBoogieName());
					break;
			}
		}
		// add user defined vars
		String[] ltlvars = new String[ltlVarsAndTypes.length];
		String[] ltltyps = new String[ltlVarsAndTypes.length];
		
		// Add global variables for ltlvars
		for (int i = 0; i < ltlVarsAndTypes.length; i++) {
			String ltlVarAndType = ltlVarsAndTypes[i];
			String[] split = ltlVarAndType.split(":");
			if (split.length != 2) {
				throw new Exception("No type given in LTLVariable declaration: "+ltlVarAndType);
			}
			String ltlvar = split[0];
			String ltltyp  = split[1];
			ltlvars[i] = ltlvar;
			ltltyps[i] = ltltyp;
			newProg = addGlobalVar(ltlvar, ltltyp, newProg);
			mLogger.info("Add user free var: " + ltlvar);
		}
		
		// get bitvec operations to add
		ArrayList<BinaryBitVecOperator> binBitVecOps = this.getBinBitVecOp(p4ltlAst, new ArrayList<BinaryBitVecOperator>());
		HashSet<String> bitOp2Add = new HashSet<String>();
		for(int i = 0; i < binBitVecOps.size(); ++i)
		{
			BinaryBitVecOperator binBitVecOp = binBitVecOps.get(i);
			String bitVecOperation = binBitVecOp.getBitOp();
			bitOp2Add.add(bitVecOperation);
			mLogger.info("Found binBitVecOp: " + binBitVecOp);
		}
		
		// instrument variable set
		boolean ultimateStartSet = false;
		for (Declaration d : newProg.getDeclarations()) {
			if(d instanceof FunctionDeclaration)
			{
				String identifier = ((FunctionDeclaration)d).getIdentifier();
				if(bitOp2Add.contains(identifier))
				{
					mLogger.info("BitVec operation is already present: " + identifier);
					bitOp2Add.remove(identifier);
				}
//				mLogger.info("----Func: " + ((FunctionDeclaration)d));
			}
			
			if (d instanceof Procedure) {
				Procedure p = (Procedure) d;
				String pname = p.getIdentifier();
				Body b = p.getBody();
				
				// match and modify
				// main --- the main part of packet processing
				// mainProcedure --- the harness
				if ((pname == "main" || pname == "mainProcedure") && p.getSpecification() != null)
				{
					for (Predicate predicate : predicates) {
						// if(predicate.getType() == PredicateType.match || predicate.getType() == PredicateType.modify)
						this.addModifies(predicate.getBoogieName(), p);
					}
				}
				if (pname == "main" && b != null) {
					for (Predicate predicate : predicates) {
//						if(predicate.getType() == PredicateType.match || 
//								predicate.getType() == PredicateType.modify)
						instrumentVariableSet(p, b, predicate);	
					}			
				}
				
				// init vars
				if(pname == "ULTIMATE.start")
				{
					ultimateStartSet = true;
					if(b != null) {
						for(Predicate predicate: predicates)
						{
							initGlobalVar(b,predicate);
						}
						// havoc user defined free var
						for (int i = 0; i < ltlvars.length; i++ ) {
							String ltlvar = ltlvars[i];
							String ltltyp = ltltyps[i];
							havocGlobalVar(b, ltlvar, ltltyp);
						}
					} 
					if(p.getSpecification() != null) {
						for(Predicate predicate: predicates)
						{
							this.addModifies(predicate.getBoogieName(), p);
						}
						for (int i = 0; i < ltlvars.length; i++ ) {
							String ltlvar = ltlvars[i];
							this.addModifies(ltlvar, p);
						}
					}
					
				}
			}
		}
		
		// add Bitvec operations
		for(String bitOpIdentifier: bitOp2Add)
		{
			// form declaration
			Expression[] bvOp = new Expression[] {new StringLiteral(iloc, bitOpIdentifier.contains("add") ? "bvadd" : "bvsub")};
			NamedAttribute bvOpAttr = new NamedAttribute(iloc, "bvbuiltin", bvOp);
			VarList[] inParams = new VarList[2];
			int bitLength = Integer.parseInt(bitOpIdentifier.substring(bitOpIdentifier.indexOf("bv") + 2));
			BoogieType bvType = BoogieType.createBitvectorType(bitLength);
			PrimitiveType primitiveType = new PrimitiveType(iloc, bvType, bvType.toString());
			inParams[0] = new VarList(iloc, new String[]{"left"}, primitiveType);
			inParams[1] = new VarList(iloc, new String[]{"right"}, primitiveType);
			VarList outParam = new VarList(iloc, new String[0], primitiveType); 
			FunctionDeclaration functionDecl = new FunctionDeclaration(iloc, new Attribute[] {bvOpAttr}, bitOpIdentifier, new String[0], inParams, outParam);
			// add to symbol table and new prog
			Declaration[] new_decs = copyToBiggerDec(newProg.getDeclarations());
			new_decs[0] = functionDecl;
			newProg.setDeclarations(new_decs);
			symbolTable.addProcedureOrFunction(bitOpIdentifier, functionDecl);
			mLogger.info("Add BitVec operation function: " + functionDecl);
		}
		
		// add ULTIMATE.start
		if(!ultimateStartSet)
		{
			Body b = new Body(iloc, new VariableDeclaration[0], new Statement[0]);
			Procedure p_nobody = new Procedure(iloc, new Attribute[0], "ULTIMATE.start", new String[0], new VarList[0], new VarList[0], new Specification[0], null);
			Procedure main = this.fetchProcedure("mainProcedure");
			p_nobody.setSpecification(main.getSpecification().clone());
			for (Predicate predicate: predicates) {
				initGlobalVar(b,predicate);
				this.addModifies(predicate.getBoogieName(), p_nobody);
			}
			
			CallStatement call = new CallStatement(iloc, false, new VariableLHS[0], "mainProcedure", new Expression[0]);
			Statement[] call_block = {call};
			Statement[] block = this.addStatementArrays(b.getBlock(), call_block, b.getBlock().length);
			b.setBlock(block);
			Procedure p_body = new Procedure(iloc, new Attribute[0], "ULTIMATE.start", new String[0], new VarList[0], new VarList[0], null, b);
			Declaration[] decs = newProg.getDeclarations();
			Declaration[] new_decs = new Declaration[decs.length+2];
			for (int i = 0; i < decs.length; i++) {
				new_decs[i] = decs[i];
			}
			new_decs[decs.length] = p_nobody;
			new_decs[decs.length+1] = p_body;
			newProg.setDeclarations(new_decs);
		}
	}
	
	private Procedure fetchProcedure(String name) {
		for (Declaration d : unit.getDeclarations()) {
			if (d instanceof Procedure) {
				Procedure p = (Procedure) d;
				String pname = p.getIdentifier();
				if (pname.equals(name)) {
					return p;
				}
			}
		}
		
		return null;
	}
	
	private ArrayList<BinaryBitVecOperator> getBinBitVecOp(AstNode p4ltlast, ArrayList<BinaryBitVecOperator> binBitVecOps)
	{
		if (p4ltlast instanceof BinaryBitVecOperator) {
			binBitVecOps.add((BinaryBitVecOperator) p4ltlast);
		}
		for (AstNode child : p4ltlast.getOutgoingNodes()) {
			this.getBinBitVecOp(child, binBitVecOps);
		}
		return binBitVecOps;
	}
	
	private ArrayList<Predicate> getPredicates(AstNode p4ltlast, ArrayList<Predicate> predicates) {
		if (p4ltlast instanceof Predicate) {
			predicates.add((Predicate) p4ltlast);
			return predicates;
		}
		for (AstNode child : p4ltlast.getOutgoingNodes()) {
			this.getPredicates(child, predicates);
		}
		return predicates;
	}
	
	private ArrayList<Event> getEvents(AstNode ltlplus, ArrayList<Event> events) {
		if (ltlplus instanceof Event) {
			events.add((Event) ltlplus);
			return events;
		}
		for (AstNode child : ltlplus.getOutgoingNodes()) {
			this.getEvents(child, events);
		}
		return events;
	}
	
	private Statement buildIncrement(String var_name, String arg_name, String pname) {
		DeclarationInformation dec_info = new DeclarationInformation(DeclarationInformation.StorageClass.GLOBAL, null);
		VariableLHS vLHS = new VariableLHS(iloc, BoogieType.TYPE_INT, var_name, dec_info);
		IdentifierExpression fsum = new IdentifierExpression(iloc, BoogieType.TYPE_INT, var_name, dec_info);
		DeclarationInformation arg_dec_info = new DeclarationInformation(DeclarationInformation.StorageClass.IMPLEMENTATION_INPARAM, pname);
		IdentifierExpression arg = new IdentifierExpression(iloc, BoogieType.TYPE_INT, arg_name, arg_dec_info);
		BinaryExpression increment = new BinaryExpression(iloc, BinaryExpression.Operator.ARITHPLUS, fsum, arg);
		LeftHandSide[] LHS = {vLHS};
		Expression[] RHS = {increment};
		AssignmentStatement a = new AssignmentStatement(iloc, LHS, RHS);
		return a;
	}
	
	private String fetchParamNameAtIndex(Procedure p, int arg_num) throws Exception {
		VarList[] params = p.getInParams();
		if (params.length <= arg_num) {
			throw new Exception("Function '"+p.getIdentifier()+"' does not have argument at index "+arg_num);
		}
		VarList param_list = params[arg_num];
		return param_list.getIdentifiers()[0];
	}
	
	private ArrayList<Statement> buildConstraintGoto(AstNode constraint, ArrayList<Statement> body, Fsum f, Procedure p) {
		// Fetch constraint string. If constraint is null, it must be a wildcard case, so set constraint to empty string
		ArrayList<Statement> stmts = new ArrayList<Statement>();
		String vname = f.getVarName();
		String constraint_str = constraint.toString();
		ArrayList<String> func_vars = this.getFunctionCallVarStrs(constraint);
		
		// TODO: Actually initialize these (or get rid of them)
		ArrayList<String> real_args = f.getRealArgs(p);
		ArrayList<AstNode> f_args = f.getFunc().getArgs().getArgs();

		Statement[] func_call_var_assns = this.getFunctionCallVarAssns(p, constraint, real_args, f_args);
		Expression expr = this.getExpression(p, constraint_str, real_args, func_vars);

		// Add function call variable assignments prior to check of constraint
		Collections.addAll(stmts, func_call_var_assns);
		
		// labels for gotos
		String[] labels = {vname+"_true", vname+"_false"};
		String[] end_labels = {vname+"_end"};		

		// branch on conditional
		stmts.add(new GotoStatement(iloc, labels));
		// true label
		stmts.add(new Label(iloc, labels[0]));
		// assume constraint true
		stmts.add(new AssumeStatement(iloc, expr));
		// add in body
		stmts.addAll(body);
		// goto end
		stmts.add(new GotoStatement(iloc, end_labels));
		// false label
		stmts.add(new Label(iloc, labels[1]));
		// assume constraint false
		stmts.add(new AssumeStatement(iloc, new UnaryExpression(iloc, UnaryExpression.Operator.LOGICNEG, expr)));
		// end label
		stmts.add(new Label(iloc, end_labels[0]));
		
		return stmts;		
	}
	
	private void instrumentVariableIncrement(Procedure p, Body b, Fsum f) throws Exception {
		String pname = p.getIdentifier();
		Statement[] stmts = b.getBlock();
		AstNode constraint = f.getConstraint(p);
		String param_name = this.fetchParamNameAtIndex(p, f.getArgNum());
		Statement increment = this.buildIncrement(f.getVarName(), param_name, pname);
		ArrayList<Statement> additions = new ArrayList<Statement>();
		additions.add(increment);
		if (constraint != null) {
			Statement saveFlag = this.buildAssignment("revert_hold", new IdentifierExpression(iloc, "revert"));
			Statement revertFalse = this.buildAssignment("revert", "false");
			Statement dumpFlag = this.buildAssignment("revert", new IdentifierExpression(iloc, "revert_hold"));			
			additions = this.buildConstraintGoto(constraint, additions, f, p);	
		} 
		Statement[] assns = additions.toArray(new Statement[additions.size()]);
		if (f.getFunc().getName().equals("send__success")) {
			stmts = this.addToStmts2(stmts, assns, "success", pname, "send");				
		} else {
			stmts = this.addToStmts2(stmts, assns, "success", pname, "");	
		}		
		b.setBlock(stmts);
	}
	
	private void instrumentVariableSet(Procedure p, Body b, Event e) throws Exception {
		if (b != null) {
			String pname = p.getIdentifier();
			Statement[] stmts = b.getBlock();
			AstNode constraint = e.getConstraint(p);
			ArrayList<String> real_args = e.getRealArgs(p);
			ArrayList<AstNode> e_args = e.getFunc().getArgs().getArgs();
			String place = e.getOp();
			String ename = e.getName();
			Statement saveFlag = this.buildAssignment("revert_hold", new IdentifierExpression(iloc, "revert"));
			Statement revertFalse = this.buildAssignment("revert", "false");
			Statement dumpFlag = this.buildAssignment("revert", new IdentifierExpression(iloc, "revert_hold"));
			if (constraint != null || this.isWildcardAddition(pname, e.getOp())) {
				Statement[] ifstmt = this.buildIfStatementWithGoto(constraint, e.getName(), pname, real_args, e_args, p, b, e.getOp());
				Statement[] revertFlag = {saveFlag, revertFalse, dumpFlag};
				ifstmt = this.addStatementArrays(revertFlag, ifstmt, 2);				
				stmts = this.addToStmts2(stmts, ifstmt, place, pname, ename);
			} else {
				Statement assnTrue = this.buildAssignment(e.getName(), "true");
				Statement assnFalse = this.buildAssignment(e.getName(), "false");
				Statement[] assns = {saveFlag, revertFalse, assnTrue, assnFalse, dumpFlag};
				stmts = this.addToStmts2(stmts, assns, place, pname, ename);
			}
			b.setBlock(stmts);
		}		
	}
	
	private void instrumentVariableSet(Procedure procedure, Body b, Predicate predicate) throws Exception {
		if (b != null) {
			Statement[] stmts = b.getBlock();
			String predicateName = predicate.toString();
//			String predicateName = predicate.getBoogieName();
			switch (predicate.getType()) {
				case ipmask:
					IPMask ipmask = (IPMask) predicate;
					// get bool boogie expression
					String exprString = ipmask.getBoogieExpr();
					// get goto-based assignment
					Statement[] assignStmts = getGotoAssignmentStmts(procedure, exprString, predicateName);
					// get insert pos
					// the last stmt is `return;`
					stmts = this.addStatementArrays(stmts, assignStmts, stmts.length-1);
//					if(predicate.getType() == PredicateType.modify || 
//						predicate.getType() == PredicateType.fwd ||
//						predicate.getType() == PredicateType.valid_after)
//					{
//						// the last stmt is `return;`
//						stmts = this.addStatementArrays(stmts, assignStmts, stmts.length-1);
//					}
//					else if(predicate.getType() == PredicateType.match ||
//							predicate.getType() == PredicateType.valid_before)
//					{
//						int index = -1;
//						for (int i = 0; i < stmts.length; i++) {
//							Statement s = stmts[i];
//							if (s instanceof CallStatement) {
//								String mname = ((CallStatement) s).getMethodName();
////								if (mname.equals("havocProcedure")) {
////									index = i + 1;	// just behind havoc
////								}
//								if (mname.startsWith("_parser_")) {
//									index = i + 1;	// just behind _parser_
//								}
//							}
//						}
//						assert index != -1 : "Cannot locate `_parser_` function";
//						stmts = this.addStatementArrays(stmts, assignStmts, index);
//					}
					break;
	
				default:
					break;
			}
			
			b.setBlock(stmts);
		}		
	}
	
	private Statement[] getGotoAssignmentStmts(Procedure p, String exprString, String predicateName) {
		Expression expr = getExpression(p, exprString);
		Statement[] body = this.setFlag(predicateName);
		String[] labels = {predicateName+"_true", predicateName+"_false"};
		String[] end_labels = {predicateName+"_end"};
		Statement gotoSplit = new GotoStatement(iloc, labels);
		Statement trueLabel = new Label(iloc, labels[0]);
		Statement assumeTrue = new AssumeStatement(iloc, expr);
		Statement gotoEnd = new GotoStatement(iloc, end_labels);
		Statement falseLabel = new Label(iloc, labels[1]);
		Statement assumeFalse = new AssumeStatement(iloc, new UnaryExpression(iloc, UnaryExpression.Operator.LOGICNEG, expr));
		Statement endLabel = new Label(iloc, end_labels[0]);
		Statement[] stmts = {gotoSplit, trueLabel, assumeTrue, body[0], gotoEnd, falseLabel, assumeFalse, body[1], endLabel};
		return stmts;
	}
	
	private void initGlobalVar(Body b, Event e) throws Exception {
		Statement[] stmts = b.getBlock();
		Statement assnFalse = this.buildAssignment(e.getName(), "false");
		Statement[] assns = {assnFalse};
		stmts = this.addToStmts2(stmts, assns, "begin", "", "");
		b.setBlock(stmts);
	}
	
	private void initGlobalVar(Body b, Fsum f) throws Exception {
		Statement[] stmts = b.getBlock();
		Statement assnFalse = this.zeroInit(f.getVarName());
		Statement[] assns = {assnFalse};
		stmts = this.addToStmts2(stmts, assns, "begin", "", "");
		b.setBlock(stmts);
	}
	
	private void initGlobalVar(Body b, Predicate p) throws Exception {
		Statement[] stmts = b.getBlock();
//		Statement assnFalse = this.buildAssignment(p.getBoogieName(), "false");
		Statement assnFalse = this.buildAssignment(p.toString(), "false");
		Statement[] assns = {assnFalse};
		stmts = this.addToStmts2(stmts, assns, "begin", "", "");
		b.setBlock(stmts);
	}
	
	private BoogieType stringToType(String ltltype) {		
		if (ltltype.equals("bool")) {
			return BoogieType.TYPE_BOOL;
		} else if (ltltype.equals("int")) {
			return BoogieType.TYPE_INT;
		} else if (ltltype.equals("Ref")) {
			return BoogieType.TYPE_INT;
		} else if (ltltype.startsWith("bv")) {
			return BoogieType.createBitvectorType(Integer.parseInt(ltltype.substring(2)));
		}
		return null;
	}
	
	private void havocGlobalVar(Body b, String ltlvar, String ltltype) throws Exception {
		Statement[] stmts = b.getBlock();
		DeclarationInformation decinf = new DeclarationInformation(DeclarationInformation.StorageClass.GLOBAL, null);
		VariableLHS[] vars = {new VariableLHS(iloc, this.stringToType(ltltype), ltlvar, decinf)};
		Statement havocVar = new HavocStatement(iloc, vars);
		Statement[] havocs = {havocVar};
		stmts = this.addToStmts2(stmts, havocs, "begin", "", "");
		b.setBlock(stmts);		
	}
	
	private String fetchCorralChoice() {
		Procedure main = this.fetchImplementation("main");
		Body b = main.getBody();
		
		// Find while loop in main
		WhileStatement ws = null;
		for (Statement s: b.getBlock()) {
			if (s instanceof CallStatement) {
				CallStatement cs = (CallStatement) s;
				String fname = cs.getMethodName();
				if (fname.startsWith("CorralChoice")) {
					return fname;
				}
			}
		}
		return null;
	}
	
	private Procedure fetchImplementation(String name) {
		for (Declaration d : unit.getDeclarations()) {
			if (d instanceof Procedure) {
				Procedure p = (Procedure) d;
				String pname = p.getIdentifier();

				if (pname.equals(name)) {
					if (p.getBody() != null) {
						return p;
					}
				}
			}
		}
		
		return null;		
	}
	
	private Procedure fetchProcedure(String name, boolean spec_ver) {
		for (Declaration d : unit.getDeclarations()) {
			if (d instanceof Procedure) {
				Procedure p = (Procedure) d;
				String pname = p.getIdentifier();
				// System.out.println("Procedure: " + pname);
				if (pname.equals(name)) {
					if (p.getBody() == null || !spec_ver) {
						return p;
					}
				}
			}
		}
		
		return null;
	}
	
	private void addModifies(String var, Procedure p) {
		ArrayList<Specification> specs = new ArrayList<Specification>(Arrays.asList(p.getSpecification()));
		VariableLHS vlhs = new VariableLHS(iloc, BoogieType.TYPE_BOOL, var, DeclarationInformation.DECLARATIONINFO_GLOBAL);
		VariableLHS[] vls = {vlhs};
		specs.add(new ModifiesSpecification(iloc, false, vls));
		Specification[] spec_arr = (Specification[]) specs.toArray(p.getSpecification());
		p.setSpecification(spec_arr);
	}
	
	private Unit initializeFSums(ArrayList<Fsum> fsums, Unit prog) {
		//  Add integer global for each fsum in constraints
		for(Fsum fsum : fsums) {
			prog = this.addGlobalVar(fsum.getVarName(), "int", prog);
		}
		return prog;
	}
	
	private ArrayList<Fsum> retrieveFsums(AstNode node) {
		ArrayList<Fsum> fsums = new ArrayList<Fsum>();

		if (node == null) {
			return fsums;
		}
		
		//  Add integer global for each fsum in constraints
		if (node instanceof Fsum) {
			fsums.add(((Fsum)node));
		}
		for (AstNode n: node.getOutgoingNodes()) {			
			fsums.addAll(this.retrieveFsums(n));
		}
		return fsums;
	}
	
	private ArrayList<Fsum> retrieveFsumsFromEvents(ArrayList<Event> events) {
		ArrayList<Fsum> fsums = new ArrayList<Fsum>();
		for (Event e: events) {
			fsums.addAll(this.retrieveFsums(e.getConstraint()));
		}
		return fsums;
		
	}
	
	private void instrument2(AstNode ltlplus, String[] ltlVarsAndTypes) throws Exception {
		// TODO: figure out how to properly copy unit
		Unit newProg = unit;
		ArrayList<Event> events = this.getEvents(ltlplus, new ArrayList<Event>());
		boolean setUltimateStart = false;
		
		boolean runOnce = this.processed_events.size() > 0;
		for (Event e: processed_events) {
//			if (events.contains(e)) {
//				events.remove(e);
//			}
		}
		
		String[] ltlvars = new String[ltlVarsAndTypes.length];
		String[] ltltyps = new String[ltlVarsAndTypes.length];
		
		// Add global variables for ltlvars
		if (!runOnce) {
			for (int i = 0; i < ltlVarsAndTypes.length; i++) {
				String ltlVarAndType = ltlVarsAndTypes[i];
				String[] split = ltlVarAndType.split(":");
				if (split.length != 2) {
					throw new Exception("No type given in LTLVariable declaration: "+ltlVarAndType);
				}
				String ltlvar = split[0];
				String ltltyp  = split[1];
				ltlvars[i] = ltlvar;
				ltltyps[i] = ltltyp;
				newProg = addGlobalVar(ltlvar, ltltyp, newProg);
			}
		}
		
		// Add global variable for revert placeholder
		if (!runOnce)
			newProg = addGlobalVar("revert_hold", "bool", newProg);
		
		// Add global variables for events
		for (Event e : events) {
			// Set function for wildcards and inv
			if (e.getFunc() == null) {
				e.setFunc(this.fetchCorralChoice());
			}

			// Add global for event flag			
			newProg = addGlobalVar(e.getName(), "bool", newProg);
			processed_events.add(e);
		}
		
		// Retrieve all fsums for instrumentation later, and add in global variables for each
		ArrayList<Fsum> fsums = this.retrieveFsumsFromEvents(events);
		
		newProg = this.initializeFSums(fsums, newProg);
		
		Set<Event> foundEvents = new HashSet<>();
		Set<Fsum> foundFsums = new HashSet<>();
		for (Declaration d : newProg.getDeclarations()) {
			if (d instanceof Procedure) {
				Procedure p = (Procedure) d;
				String pname = p.getIdentifier();
				Body b = p.getBody();
				
				if (p.getSpecification() != null) {
					for (Event e : events) {
						Function func = e.getFunc();
						//String fname = func.getName();
						Pattern fnPattern = func.getNamePattern();
						Matcher fnMatch = fnPattern.matcher(pname);
						if (fnMatch.matches()) {
							this.addModifies(e.getName(), p);
						}
					}
				}
				
				if (b != null) {
					// Add in variable havocs for any user-added global variables					
					if (p.getIdentifier().equals("main") && !runOnce) {
						for (int i = 0; i < ltlvars.length; i++ ) {
							String ltlvar = ltlvars[i];
							String ltltyp = ltltyps[i];
							havocGlobalVar(b, ltlvar, ltltyp);
						}
					}
					
					// Instrument fsum variables
					for (Fsum f : fsums) {
						/*String fname = f.getFuncName();
						// instrument functions with variable increment
						if (pname.toLowerCase().equals(fname.toLowerCase())) {
							this.instrumentVariableIncrement(p, b, f);	
						}*/
						
						Pattern fnPattern = f.getFunc().getNamePattern();
						Matcher fnMatch = fnPattern.matcher(pname);
						if(fnMatch.matches()) {
							this.instrumentVariableIncrement(p, b, f);
							foundFsums.add(f);
						}
						// Initialize global variables in ULTIMATE.start()
						else if (p.getIdentifier().equals("ULTIMATE.start")) {
							initGlobalVar(b, f);
							setUltimateStart = true;
						}
					}
					
					// Instrument variables for events
					this.currentEvent = 0;
					for (Event e : events) {
						Function func = e.getFunc();
						//String fname = func.getName();
						
						if (fname.equals("send__success") && pname.equals("send__fail")) {
							System.out.println(e.getOp());
						}
						Pattern fnPattern = func.getNamePattern();
						Matcher fnMatch = fnPattern.matcher(pname);
						
						// instrument functions with variable set
						//if (pname.toLowerCase().equals(fname.toLowerCase()) 
						if(fnMatch.matches()
								|| (pname.equals("send__fail") && fname.equals("send__success") && e.getOp().equals("call"))) {
//								|| (this.inFairness && pname.equals("send__fail") && fname.equals("send__success"))) {
							instrumentVariableSet(p, b, e);	
							foundEvents.add(e);
						}

						// Initialize global variables in ULTIMATE.start()
						else if (p.getIdentifier().equals("ULTIMATE.start")) {
							initGlobalVar(b, e);
							setUltimateStart = true;
						}
						this.currentEvent++;
					}				
				} else {
					if (p.getIdentifier().equals("ULTIMATE.start") && !runOnce) {						
						for (Event e: events) {
							this.addModifies(e.getName(), p);
						}
					}
				}
			}
		}	
		
		if(!foundEvents.containsAll(events)) {
			Set<Event> eventSet = new HashSet<>(events);
			eventSet.removeAll(foundEvents);
			throw new RuntimeException("Could not find the following functions: " + eventSet.stream().map(e -> e.getFunc().getName()).collect(Collectors.toSet()));
		}
		
		if(!foundFsums.containsAll(fsums)) {
			Set<Fsum> fsumSet = new HashSet<>(fsums);
			fsumSet.removeAll(foundFsums);
			throw new RuntimeException("Could not find the following functions: " + fsumSet.stream().map(f -> f.getFunc().getName()).collect(Collectors.toSet()));
		}


		if (!setUltimateStart && !runOnce) {
			Body b = new Body(iloc, new VariableDeclaration[0], new Statement[0]);
			Procedure p_nobody = new Procedure(iloc, new Attribute[0], "ULTIMATE.start", new String[0], new VarList[0], new VarList[0], new Specification[0], null);
			Procedure main = this.fetchProcedure("main", true);
			p_nobody.setSpecification(main.getSpecification().clone());
			for (Event e: events) {
				initGlobalVar(b,e);
				this.addModifies(e.getName(), p_nobody);
			}
			for (Fsum f : fsums) {
				initGlobalVar(b, f);
				this.addModifies(f.getVarName(), p_nobody);
			}
			CallStatement call = new CallStatement(iloc, false, new VariableLHS[0], "main", new Expression[0]);
			Statement[] call_block = {call};
			Statement[] block = this.addStatementArrays(b.getBlock(), call_block, b.getBlock().length);
			b.setBlock(block);
			Procedure p_body = new Procedure(iloc, new Attribute[0], "ULTIMATE.start", new String[0], new VarList[0], new VarList[0], null, b);
			Declaration[] decs = newProg.getDeclarations();
			Declaration[] new_decs = new Declaration[decs.length+2];
			for (int i = 0; i < decs.length; i++) {
				new_decs[i] = decs[i];
			}
			new_decs[decs.length] = p_nobody;
			new_decs[decs.length+1] = p_body;
			newProg.setDeclarations(new_decs);
		}
	}

	private Procedure parseStringToProcedure (String expr) {
		final String niceProgram = "procedure main() { %s }";

		final String localProg = String.format(niceProgram, expr.trim());
		final BoogieSymbolFactory symFac = new BoogieSymbolFactory();
		final de.uni_freiburg.informatik.ultimate.boogie.parser.Lexer lexer =
				new de.uni_freiburg.informatik.ultimate.boogie.parser.Lexer(IOUtils.toInputStream(localProg));
		lexer.setSymbolFactory(symFac);
		final de.uni_freiburg.informatik.ultimate.boogie.parser.Parser p =
				new de.uni_freiburg.informatik.ultimate.boogie.parser.Parser(lexer, symFac, mServices);

		try {
			final Unit x = (Unit) p.parse().value;
			final Procedure proc = (Procedure) x.getDeclarations()[0];
			return proc;
		} catch (final Exception e) {
			mLogger.error(String.format("Exception while parsing the atomic proposition \"%s\": %s", expr, e));
			throw new RuntimeException(e);
		}
	}
	
	/*private HashMap<String, String> getArgMap(String pname, ArrayList<AstNode> e_args) {
		Procedure p = this.fetchProcedure(pname, false);
		VarList[] pargs = p.getInParams();
		HashMap<String, String> arg_map = new HashMap<String, String>();
		int pargs_i = pargs.length-1;
		for (int i = e_args.size()-1; i >= 0; i--) {
			arg_map.put(e_args.get(i).toString(), pargs[pargs_i].getIdentifiers()[0]);
			pargs_i--;
		}
		return arg_map;
	}*/
	
	private HashMap<String, String> getArgMap(Procedure p, ArrayList<AstNode> e_args) {
		VarList[] pargs = p.getInParams();
		HashMap<String, String> arg_map = new HashMap<String, String>();
		int pargs_i = pargs.length-1;
		for (int i = e_args.size()-1; i >= 0; i--) {
			arg_map.put(e_args.get(i).toString(), pargs[pargs_i].getIdentifiers()[0]);
			pargs_i--;
		}
		return arg_map;
	}
	
	private Expression getExpression(Procedure p, String expr, ArrayList<String> real_args, ArrayList<String> func_vars) {
		Procedure proc = this.parseStringToProcedure("#thevar := "+expr+";");
		final AssignmentStatement stmt = (AssignmentStatement) proc.getBody().getBlock()[0];
		final Expression bExpr = stmt.getRhs()[0];
		final Expression newBExpr = bExpr.accept(new DeclarationInformationAdder(p, real_args, func_vars, currentEvent));
		mLogger.info("Parsed " + expr + " to " + newBExpr.toString());
		return newBExpr;		
	}
	
	private Expression getExpression(Procedure p, String expr) {
		Procedure proc = this.parseStringToProcedure("#thevar := "+expr+";");
		final AssignmentStatement stmt = (AssignmentStatement) proc.getBody().getBlock()[0];
		final Expression bExpr = stmt.getRhs()[0];
		final Expression newBExpr = bExpr.accept(new P4LTL_DeclarationInformationAdder(p));
		mLogger.info("Parsed expression string \"" + expr + "\" to expression node " + newBExpr.toString());
		return newBExpr;		
	}
	
	private VariableDeclaration[] copyVarDecsWithILoc(VariableDeclaration[] vardecs) {
		VariableDeclaration[] new_vardecs = new VariableDeclaration[vardecs.length];
		for (int i = 0; i < vardecs.length; i++) {
			VariableDeclaration v = vardecs[i];
			VarList[] vls = v.getVariables();
			VarList[] new_vls = new VarList[vls.length];
			for (int j = 0; j < vls.length; j++) {
				VarList vl = vls[j];
				VarList newvl = new VarList(iloc, vl.getIdentifiers(), vl.getType());
				new_vls[j] = newvl;
			}
			VariableDeclaration newv = new VariableDeclaration(iloc, v.getAttributes(), new_vls);
			new_vardecs[i] = newv;
		}
		
		return new_vardecs;
	}
	
	private BoogiePrimitiveType convertStringTypeToBoogiePrimitiveType(String typ) {
		if (typ.equals("int")) {
			return BoogieType.TYPE_INT;
		} else if (typ.equals("bool")) {
			return BoogieType.TYPE_BOOL;
		}
		return BoogieType.TYPE_ERROR;
	}
	
	private VariableDeclaration[] adjustVarDecsWithBoogieType(VariableDeclaration[] vardecs) throws Exception {		
		for (VariableDeclaration v : vardecs) { 
			VarList[] vls = v.getVariables();
			for (VarList vl : vls) {
				ASTType at = vl.getType();
				if (at instanceof PrimitiveType) {
					PrimitiveType pt = (PrimitiveType) at;
					pt.setBoogieType(this.convertStringTypeToBoogiePrimitiveType(pt.getName()));
				} else {
					mLogger.error("Variable type not primitive: " + at.toString());
					throw new Exception();
				}
			}
		}
		
		return vardecs;
	}
	
	private VariableDeclaration[] getFunctionCallVarDecs(AstNode constraint) throws Exception {
		String decs = this.getFunctionCallVarDecStrs(constraint);
		Procedure proc = this.parseStringToProcedure(decs);
		VariableDeclaration[] vardecs = this.copyVarDecsWithILoc(proc.getBody().getLocalVars());
		vardecs = this.adjustVarDecsWithBoogieType(vardecs);
		String logInfo = "Parsed " + decs + " to ";
		for (VariableDeclaration v: vardecs) {			
			logInfo += v.toString();
		}
		if (vardecs.length > 0 || !decs.equals(""))
			mLogger.info(logInfo);
		return vardecs;
	}
	
	private Statement[] getFunctionCallVarAssns(Procedure p, AstNode constraint, ArrayList<String> real_args, ArrayList<AstNode> e_args) {		
		HashMap<String, String> arg_map = this.getArgMap(p, e_args);
		String assns = this.getFunctionCallVarAssnStrs(constraint, arg_map);
		ArrayList<String> func_vars = this.getFunctionCallVarStrs(constraint);
		Procedure proc = this.parseStringToProcedure(assns);
		Statement[] stmts = proc.getBody().getBlock();
		Statement[] adjusted_stmts = new Statement[stmts.length];
		String logInfo = "Parsed " + assns + " to ";
		for (int i = 0; i < stmts.length; i++) {	
			Statement s = stmts[i];
			Statement new_s = s.accept(new DeclarationInformationAdder(p, real_args, func_vars, this.currentEvent));
			adjusted_stmts[i] = new_s;
			logInfo += new_s.toString();
		}
		if (stmts.length > 0 || !assns.equals(""))
			mLogger.info(logInfo);
		return adjusted_stmts;
	}
	
	private Statement[] setFlag(String flag) {
		AssignmentStatement setTrue = buildAssignment(flag, "true");
		AssignmentStatement setFalse = buildAssignment(flag, "false");				
		Statement[] assns = {setTrue, setFalse};
		return assns;
	}
	
	private TreeSet<String> getFunctionCallVarAssnStrs_help(AstNode node, HashMap<String, String> arg_map) {
		TreeSet<String> fvds = new TreeSet<String>();
		if (node instanceof FunctionCall) {
			fvds.add(((FunctionCall) node).assignmentString(unit, arg_map, this.currentEvent)+"; ");
		}
		for (AstNode n: node.getOutgoingNodes()) {
			fvds.addAll(this.getFunctionCallVarAssnStrs_help(n, arg_map));
		}
		return fvds;
		
	}
	
	private String getFunctionCallVarAssnStrs(AstNode node, HashMap<String, String> arg_map) {
		String func_var_decs = "";
		TreeSet<String> fvds = this.getFunctionCallVarAssnStrs_help(node, arg_map);
		for (String s : fvds) {
			func_var_decs += s;
		}
		return func_var_decs;
	}
	
	private ArrayList<FunctionCall> getFunctionCallNodes(AstNode node) {
		ArrayList<FunctionCall> fcs = new ArrayList<FunctionCall>();
		if (node instanceof FunctionCall) {
			fcs.add((FunctionCall) node);
		}
		for (AstNode n: node.getOutgoingNodes()) {
			fcs.addAll(this.getFunctionCallNodes(n));
		}
		return fcs;		
	}
	
	private ArrayList<String> getFunctionCallVarStrs(AstNode node) {
		ArrayList<String> func_vars = new ArrayList<String>();
		if (node instanceof FunctionCall) {
			func_vars.add(node.toString()+Integer.toString(this.currentEvent));
		}
		for (AstNode n: node.getOutgoingNodes()) {
			func_vars.addAll(this.getFunctionCallVarStrs(n));
		}
		return func_vars;		
	}
	
	private String getFunctionCallVarDecStrs(AstNode node) {
		ArrayList<FunctionCall> fcs = this.getFunctionCallNodes(node);
		ArrayList<String> fvs = this.getFunctionCallVarStrs(node);
		TreeSet<String> decs = new TreeSet<String>();
		for(int i = 0; i < fvs.size(); i++) {
			String fv = fvs.get(i);
			FunctionCall fc = fcs.get(i);			
			Procedure p = this.fetchProcedure(fc.functionName(unit), false);
			String type = "int";
			VarList[] vl = p.getOutParams();
			if (vl.length > 0) {
				ASTType t = vl[0].getType();
				if (t instanceof PrimitiveType) {
					type = ((PrimitiveType) t).getName();
				}
			}
			decs.add("var " + fv + ": " + type + "; ");
		}
		String func_var_decs = "";
		for (String dec : decs) {
			func_var_decs += dec;
		}
		return func_var_decs;
	}
	
	private boolean isWildcardAddition(String pname, String eop) {
		return pname.startsWith("CorralChoice") && (eop.equals("success") || eop.equals("fail"));
	}
	
	private Statement[] buildIfStatementWithGoto (AstNode constraint, String flag, String pname, ArrayList<String> real_args, ArrayList<AstNode> e_args, Procedure p, Body b, String eop) throws Exception{
		// Fetch constraint string. If constraint is null, it must be a wildcard case, so set constraint to empty string
		String constraint_str = "";
		ArrayList<String> func_vars = new ArrayList<String>();
		Statement[] func_call_var_assns = new Statement[0];
		if (constraint != null) {
			constraint_str = constraint.toString();
			func_vars = this.getFunctionCallVarStrs(constraint);
			func_call_var_assns = this.getFunctionCallVarAssns(p, constraint, real_args, e_args);
			VariableDeclaration[] func_call_var_decs = this.getFunctionCallVarDecs(constraint);
			if (func_call_var_decs.length > 0) {
				VariableDeclaration[] old_var_decs = b.getLocalVars();
				VariableDeclaration[] new_var_decs = this.addVarDecArrays(func_call_var_decs, old_var_decs, func_call_var_decs.length-1);
				b.setLocalVars(new_var_decs);
			}
		}
				
		// Handle wildcard additions for "fail" and "success"
		if (this.isWildcardAddition(pname, eop)) {
			String additional_check = "";
			if (eop.equals("success")) {
				additional_check = "!revert_hold";
			} else if (eop.equals("fail")) {
				additional_check = "revert_hold";
			}
			if (!constraint_str.equals("")) {
				constraint_str = "(" + constraint_str + ") && ";
			}
			constraint_str += additional_check; 
		}
		Expression expr = this.getExpression(p, constraint_str, real_args, func_vars);
		// Handle case for contract invariant
//		if (pname.indexOf("CorralChoice") != -1) {
//			expr = new UnaryExpression(iloc, UnaryExpression.Operator.LOGICNEG, expr);
//		}
		Statement[] body = this.setFlag(flag);
		// TODO: Create better labels in case of multiple flag sets
		String[] labels = {flag+"_true", flag+"_false"};
		String[] end_labels = {flag+"_end"};
		Statement gotoSplit = new GotoStatement(iloc, labels);
		Statement trueLabel = new Label(iloc, labels[0]);
		Statement assumeTrue = new AssumeStatement(iloc, expr);
		Statement gotoEnd = new GotoStatement(iloc, end_labels);
		Statement falseLabel = new Label(iloc, labels[1]);
		Statement assumeFalse = new AssumeStatement(iloc, new UnaryExpression(iloc, UnaryExpression.Operator.LOGICNEG, expr));
		Statement endLabel = new Label(iloc, end_labels[0]);
		Statement[] stmts = {gotoSplit, trueLabel, assumeTrue, body[0], body[1], gotoEnd, falseLabel, assumeFalse, endLabel};
		if (func_call_var_assns.length > 0) {
			stmts = this.addStatementArrays(func_call_var_assns, stmts, func_call_var_assns.length);
		}
		return stmts;
	}
	
	private AssignmentStatement buildAssignment(String var, IdentifierExpression val) {
		DeclarationInformation dec_info = new DeclarationInformation(DeclarationInformation.StorageClass.GLOBAL, null);
		val.setDeclarationInformation(dec_info);
		val.setType(BoogieType.TYPE_BOOL);
		VariableLHS vLHS = new VariableLHS(iloc, BoogieType.TYPE_BOOL, var, dec_info);
		LeftHandSide[] LHS = {vLHS};
		Expression[] RHS = {val};
		AssignmentStatement a = new AssignmentStatement(iloc, LHS, RHS);
		return a;		
	}
	
	private AssignmentStatement buildAssignment (String var, String val) {
		DeclarationInformation dec_info = new DeclarationInformation(DeclarationInformation.StorageClass.GLOBAL, null);
		VariableLHS vLHS = new VariableLHS(iloc, BoogieType.TYPE_BOOL, var, dec_info);
		BooleanLiteral bval = new BooleanLiteral(iloc, val.equals("true"));
		LeftHandSide[] LHS = {vLHS};
		Expression[] RHS = {bval};
		AssignmentStatement a = new AssignmentStatement(iloc, LHS, RHS);
		return a;
	}
	
	private AssignmentStatement zeroInit (String var) {
		DeclarationInformation dec_info = new DeclarationInformation(DeclarationInformation.StorageClass.GLOBAL, null);
		VariableLHS vLHS = new VariableLHS(iloc, BoogieType.TYPE_INT, var, dec_info);
		IntegerLiteral initVal = new IntegerLiteral(iloc, "0");
		LeftHandSide[] LHS = {vLHS};
		Expression[] RHS = {initVal};
		AssignmentStatement a = new AssignmentStatement(iloc, LHS, RHS);
		return a;
	}
	
	private Statement[] wildcardAddToStmts(Statement[] stmts, Statement[] stmts_to_add, String place, String pname, String ename) throws Exception {
		Statement[] new_stmts = stmts;
		if (place.equals("call")) {
			int index = -1;
			for (int i = 0; i < stmts.length; i++) {
				Statement s = stmts[i];
				if (s instanceof GotoStatement) {
					index = i;
					break;
				}
			} 
			new_stmts = this.addStatementArrays(new_stmts, stmts_to_add, index);			
		} else if (place.equals("success")) {
			new_stmts = this.addStatementArrays(new_stmts, stmts_to_add, stmts.length-1);
		} else if (place.equals("fail")) {
			new_stmts = this.addStatementArrays(new_stmts, stmts_to_add, stmts.length-1);
		} else {
			throw new Exception("Event "+place+" not handled for wildcards!");			
		}
		return new_stmts;
	}
	private Statement[] addToStmts2(Statement[] stmts, Statement[] stmts_to_add, String place, String pname, String ename) throws Exception {
		if (pname.startsWith("CorralChoice") && !place.equals("inv")) {
			return this.wildcardAddToStmts(stmts, stmts_to_add, place, pname, ename);
		}
		Statement[] new_stmts = stmts;
		if (place.equals("begin") || place.equals("call")) {
			new_stmts = this.addStatementArrays(new_stmts, stmts_to_add, 0);
		} else if (place.equals("inv")) {
			new_stmts = this.addStatementArrays(new_stmts, stmts_to_add, stmts.length-1);
		} else if (place.equals("success")) {
			// TODO: replace substring lookup with something more concrete
			if (ename.indexOf("send") != -1) {
				new_stmts = this.addStatementArrays(new_stmts, stmts_to_add, new_stmts.length-1);				
			} else {
				int index = -1;
				for (int i = 0; i < stmts.length; i++) {
					Statement s = stmts[i];
					if (s instanceof CallStatement) {
						String mname = ((CallStatement) s).getMethodName();
						if (mname.equals(pname + "__success")) {
							index = i + 2;
						}
					}
				}
				new_stmts = this.addStatementArrays(new_stmts, stmts_to_add, index);
			}
		} else if (place.equals("fail") || place.equals("callSuccess")) {
			// TODO: handle send?
			String post = "__fail";
			if (place.equals("callSuccess")) {
				post = "__success";
			}
			if (ename.indexOf("send") != -1) {
				new_stmts = this.addStatementArrays(new_stmts, stmts_to_add, new_stmts.length-1);
			} else {
				int index = -1;
				for (int i = 0; i < stmts.length; i++) {
					Statement s = stmts[i];
					if (s instanceof CallStatement) {
						String mname = ((CallStatement) s).getMethodName();
						if (mname.equals(pname + post)) {
							index = i;
						}
					}
				} 
				new_stmts = this.addStatementArrays(new_stmts, stmts_to_add, index);
			}
		}
		return new_stmts;
	}
	
	private VariableDeclaration[] addVarDecArrays(VariableDeclaration[] vars1, VariableDeclaration[] vars2, int index) {
		return (VariableDeclaration[]) addArrays(vars1, vars2, new VariableDeclaration[vars1.length+vars2.length], index);
	}
	
	private Statement[] addStatementArrays(Statement[] stmts1, Statement[] stmts2, int index) {
		return (Statement[]) addArrays(stmts1, stmts2, new Statement[stmts1.length+stmts2.length], index);	
	}
	
	private Object[] addArrays(Object[] arr1, Object[] arr2, Object[] new_arr, int index) {		
		for (int i = 0; i < index; i++) {
			new_arr[i] = arr1[i];
		}
		
		for (int j = 0; j < arr2.length; j++) {
			new_arr[j+index] = arr2[j];
		}
		
		for (int k = index; k < arr1.length; k++) {
			new_arr[k+arr2.length] = arr1[k];
		}
		
		return new_arr;
	}
	
	private Declaration[] copyToBiggerDec(Declaration[] decs) {
		Declaration[] new_decs = new Declaration[decs.length+1];
		
		for (int i = 0; i < decs.length; i++) {
			new_decs[i+1] = decs[i];
		}		
		
		return new_decs;
	}
	
	private Unit addGlobalVar(String name, String type, Unit newProg) {
		iloc = newProg.getDeclarations()[0].getLoc();	
		
		BoogieType bt = this.stringToType(type);
		
		PrimitiveType pt = new PrimitiveType(iloc, bt, type);
		String[] var_names = {name};
		VarList vars = new VarList(iloc, var_names, pt);
		VarList[] varss = {vars};
		VariableDeclaration var = new VariableDeclaration(iloc, new Attribute[0], varss);
		Declaration[] new_decs = copyToBiggerDec(newProg.getDeclarations());
		new_decs[0] = var;
		newProg.setDeclarations(new_decs);
		symbolTable.addGlobalVariable(name, var);
		return newProg;
	}
		
	private String compileLTLPlusToLTL(AstNode ltlplus, String ltlplus_str) {
		mLogger.info("Compiling: " + ltlplus_str);
		String compiled = ltlplus.toString();
		mLogger.info("Compiled to " + compiled);
		return compiled;
	}
	
	public AstNode ltlPlus2Ast(final String ltlPlusFormula) throws Exception {
		mLogger.info(String.format("Parsing LTLPlus Formula to AstNode: %s", ltlPlusFormula));
		final InputStreamReader isReader = new InputStreamReader(IOUtils.toInputStream(ltlPlusFormula));
		try {
			SpecLangLexer lexer = new SpecLangLexer(isReader);		
			mLogger.info("Successfully lexed: " + ltlPlusFormula);			
			AstNode spec = (AstNode) new SpecLangParser(lexer).parse().value;
			mLogger.info("Successfully parsed: " + ltlPlusFormula);
			return spec;
		} catch (final Exception ex) {
			mLogger.fatal("Exception during parsing of LTLPlus formula: " + ltlPlusFormula, ex);
			throw ex;
		}
	}
	
	private void updateModifies() throws Throwable {
		ModSetAnalyzer msa = new ModSetAnalyzer(mServices);
		msa.process(unit);
			
		Map<String, Set<String>> proc_map = msa.getModifiedGlobals();
		
		for (Map.Entry<String, Set<String>> e : proc_map.entrySet()) {
			Procedure p = this.fetchProcedure(e.getKey(), true);
			ArrayList<Specification> specs = new ArrayList<Specification>(Arrays.asList(p.getSpecification()));

			Set<String> vars = e.getValue();
			
			for (Specification spec : specs) {
				if (spec instanceof ModifiesSpecification) {
					VariableLHS[] vlhss = ((ModifiesSpecification) spec).getIdentifiers();
					for (VariableLHS vlhs : vlhss) {
						if (vars.contains(vlhs.getIdentifier())) {
							vars.remove(vlhs.getIdentifier());
						}
						
					}
				}
			}
			
			for (String var : vars) {
				this.addModifies(var, p);
			}
		}
	}
	
	private TreeMap<String, String> get_sol_var_map(String type) {
		TreeMap<String, String> access_map = new TreeMap<String, String>(Comparator.comparing(String::length).reversed().thenComparing(java.util.function.Function.identity()));
		for (Declaration d : unit.getDeclarations()) {	
			if (d instanceof VariableDeclaration) {
				VariableDeclaration vd = (VariableDeclaration) d;
				for(Attribute a: vd.getAttributes()) {
					if (a instanceof NamedAttribute) {
						NamedAttribute na = (NamedAttribute) a;
						if (na.getName().equals(type)) {
							Expression hint_expr = na.getValues()[0];
							if (hint_expr instanceof StringLiteral) {
								String hint = ((StringLiteral) hint_expr).getValue();
								String[] hint_split = hint.split("=");
								String sol_var = hint_split[0];
								String boogie_var = hint_split[1];
								/*if (type.equals("sum")) { 
									sol_var = "c"+sol_var; // Add "c" to solidity sum so that it is csum for sum map
									// Add "c" to boogie and change brackets to parens for outermost on sum
									int firstBrack = boogie_var.indexOf("[");
									String sum_prefix = boogie_var.substring(0, firstBrack);
									String sum_suffix = boogie_var.substring(firstBrack+1, boogie_var.length()-1);
									boogie_var = "c" + sum_prefix + "(" + sum_suffix + ")";
								}*/
								access_map.put(sol_var, boogie_var);
							}
						}
					}
				}
				
			}
		}
		
		return access_map;
	}
	
	private String extractBoogieVariable(String baseVar, int ind) {
		for(; ind < baseVar.length() && baseVar.charAt(ind) == ']'; ind++);
		String boogieVar = baseVar.substring(0, ind);
		
		int numBrackets = 0;
		int i = -1;
		for(i = boogieVar.length() - 1; i >= 0; i--) {
			if(boogieVar.charAt(i) == ']') {
				numBrackets++;
			}
			else if(boogieVar.charAt(i) == '[') {
				numBrackets--;
			}
			
			if(numBrackets < 0) {
				i = i + 1;
				break;
			}
		}
		
		return i == -1 ? boogieVar : boogieVar.substring(i);
	}
	
	private String replace_solidity_vars(String spec, TreeMap<String, String> map) {
		String mapRegex = ".+?(\\[[^\\]]+\\])";
		Pattern mapPattern = Pattern.compile(mapRegex);
		
		Map<String, String> replacementsMap = new HashMap<>(map);
		for(Map.Entry<String,String> entry : map.entrySet()) {
			String solVar = entry.getKey();
			String boogieVar = entry.getValue();
			Matcher mapMatch = mapPattern.matcher(solVar);
			
			while(mapMatch.find()) {
				String solStr = mapMatch.group(0);
				String indStr = mapMatch.group(1);
				
				int indPos = boogieVar.indexOf(indStr);
				if(indPos == -1) {
					throw new RuntimeException("Could not find index " + indStr + " in boogie variable " + boogieVar);
				}
				
				if(solStr.indexOf('[', solStr.indexOf('[') + 1) == -1) {
					String newVar = extractBoogieVariable(boogieVar, indPos);
					replacementsMap.put(solStr.substring(0, solStr.length() - indStr.length()), newVar);
				}
				
				if(solStr.contentEquals(solVar)) {
					continue;
				}
				
				String newVar = extractBoogieVariable(boogieVar, indPos + indStr.length());
				replacementsMap.put(solStr, newVar);
			}
		}
		
		
		//String mapRegex = "[^\\[]+?(\\[([^\\]]+)\\])*";
		for (Map.Entry<String,String> entry : replacementsMap.entrySet())  {
			String sol_var = entry.getKey();
			String boogie_var = entry.getValue();
			
			if (sol_var.contains("[i2]")) { // 2-d array
				String regex = sol_var.replace("[i2]", "\\[([^\\]]*)\\]");
				regex = regex.replace("[i1]", "\\[([^\\]]*)\\]");				
				Pattern p = Pattern.compile(regex);
				Matcher m = p.matcher(spec);
				while (m.find()) {
					String full_str = m.group(0);
					String i1_rep = m.group(1);
					String i2_rep = m.group(2);
					spec = spec.replace(full_str, boogie_var.replace("[i1]", "["+i1_rep+"]").replace("[i2]", "["+i2_rep+"]"));
				}
			} else if (sol_var.contains("[i1]")) { // 1-d array
				String regex = sol_var.replace("[i1]", "\\[([^\\]]*)\\]");				
				Pattern p = Pattern.compile(regex);
				Matcher m = p.matcher(spec);
				while (m.find()) {
					String full_str = m.group(0);
					String i1_rep = m.group(1);
					spec = spec.replace(full_str, boogie_var.replace("[i1]", "["+i1_rep+"]"));
				}
			} else { // non-array global variable
				//spec = spec.replaceAll(sol_var + "([^a-zA-Z_0-9])", boogie_var + "$1");
				spec = spec.replace(sol_var, boogie_var);
			}
		}
		
		return spec;
	}

	@Override
	public boolean performedChanges() {
		return true;
	}

	@Override
	public boolean process(final IElement root) throws Throwable {
		if (root instanceof Unit) {
			unit = (Unit) root;
			inputFile = ((Unit) root).getLocation().getFileName();
			symbolTable = PreprocessorAnnotation.getAnnotation(root).getSymbolTable();
			fname = inputFile;
		}
		return false;
	}

	public PropertyContainer getModel() {
		return result;
	}	
	
	public String[] getLTLPropertyString() throws IOException {
		final String[] properties;
		if (mServices.getPreferenceProvider(Activator.PLUGIN_ID)
				.getBoolean(PreferenceInitializer.LABEL_PROPERTYFROMFILE) && inputFile != null) {
			properties = extractPropertyFromInputFile();
			if (properties.length > 0) {
				return properties;
			}
			throw new IllegalArgumentException("File " + inputFile + " did not contain an LTL property");
		}
		mLogger.info("Using LTL properties from settings");
		properties = mServices.getPreferenceProvider(Activator.PLUGIN_ID)
				.getString(PreferenceInitializer.LABEL_PPROPERTY).split("\n");
		if (properties.length > 0 && !properties[0].isEmpty()) {
			return properties;
		}
		throw new IllegalArgumentException("Settings did not contain an LTL property");
	}


	public String[] extractFromInputFile(String marker) throws IOException {
		BufferedReader br;
		String line = null;
		ArrayList<String> ret = new ArrayList<String>();
		//final List<String> properties = new ArrayList<>();
		try {
			br = new BufferedReader(new FileReader(inputFile));
			while ((line = br.readLine()) != null) {
				if (line.contains(marker)) {
					if (ret.size() > 1 && marker == LTL_MARKER)
						mLogger.warn("File may contain more than one property!");
					ret.add(line.replaceFirst("//", "").replaceAll(marker, "").trim());
				}
			}
			br.close();
		} catch (final IOException e) {
			mLogger.error("Error while reading " + inputFile + ": " + e);
			throw e;
		}
		return ret.toArray(new String[ret.size()]);
	}
	
	public String[] extractLTLVariablesFromInputFile() throws IOException {
		String[] vars = this.extractFromInputFile(LTLVAR_MARKER);
		// catch case where no variables declared
		if (vars.length == 0) {
			return new String[0];
		}
		return vars[0].split(",");
	}
	
	private String[] extractPropertyFromInputFile() throws IOException {
		String[] properties = extractFromInputFile(LTL_MARKER);
		return properties;
	}
	
	private String[] extractFairnessPropertyFromInputFile() throws IOException {
		String[] properties = extractFromInputFile(LTLFAIRNESS_MARKER);
		return properties;
	}
	
	private String[] extractControlPlaneInterfaceFromInputFile() throws IOException {
		String[] properties = extractFromInputFile(CONTROLPLANEINTERFACE_MARKER);
		return properties;
	}
	
	private static final class DeclarationInformationAdder extends GeneratedBoogieAstTransformer {
		private Procedure procedure;
		private String pname;
		private ArrayList<String> real_args;
		private ArrayList<String> local_args;
		private int currentEvent;
		
		public DeclarationInformationAdder(Procedure p, ArrayList<String> real_args, ArrayList<String> local_func_call_args, int currentEvent) {
			super();
			this.procedure = p;
			this.pname = p.getIdentifier();
			this.real_args = real_args;
			this.local_args = local_func_call_args;
			this.currentEvent = currentEvent;
		}
		
		private DeclarationInformation getDeclInfo (String id) {
			DeclarationInformation declinfo = DeclarationInformation.DECLARATIONINFO_GLOBAL;
			if (this.local_args.contains(id)) {
				declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.LOCAL, pname);
			} else if (this.local_args.contains(id+Integer.toString(this.currentEvent))) {						
				declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.LOCAL, pname);
			} else if (id.startsWith("__ret_")) { // TODO: DOES THIS NEED TO BE MORE ROBUST?
				declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.IMPLEMENTATION_OUTPARAM, pname);
			} else if (this.real_args.contains(id)) {
				declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.IMPLEMENTATION_INPARAM, pname);
			} else if (id.equals("to") || id.equals("from") || id.equals("this") || id.equals("amount")) {
				declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.IMPLEMENTATION_INPARAM, pname);
			} else if (id.equals("msg.sender")) {
				if (pname.indexOf("CorralChoice") != -1) {
					declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.LOCAL, pname);
				} else {
					declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.IMPLEMENTATION_INPARAM, pname);
				}
				id = "msgsender_MSG";
			} else if (id.equals("msg.value")) {
				if (pname.indexOf("CorralChoice") != -1) {
					declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.LOCAL, pname);
				} else {
					declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.IMPLEMENTATION_INPARAM, pname);
				}
				id = "msgvalue_MSG";
			} else if (id.equals("success")) {
				declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.IMPLEMENTATION_OUTPARAM, pname);
			} 
			
			for(VarList vl : procedure.getOutParams()) {
				for(String identifier : vl.getIdentifiers()) {
					if(identifier.equals(id)) {
						declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.IMPLEMENTATION_OUTPARAM, pname);
						break;
					}
				}
			}
			
			return declinfo;
		}
		
		public String changeVarId(String id) {
			if (id.equals("msg.sender")) {				
				id = "msgsender_MSG";
			} else if (id.equals("msg.value")) {				
				id = "msgvalue_MSG";
			} else if (this.local_args.contains(id+Integer.toString(this.currentEvent))) {
				id = id+Integer.toString(this.currentEvent);
			}
			return id;
		}
		
		@Override 
		public VariableLHS transform(final VariableLHS node) {
			String id = node.getIdentifier();
			DeclarationInformation declinfo = this.getDeclInfo(id);
			return new VariableLHS(node.getLocation(), node.getType(), id, declinfo);
		}
		
		@Override
		public Expression transform(final IdentifierExpression node) {
			String id = node.getIdentifier();
			DeclarationInformation declinfo = this.getDeclInfo(id);
			return new IdentifierExpression(node.getLocation(), node.getType(), this.changeVarId(id), declinfo);
		}
	}

	
	private static final class P4LTL_DeclarationInformationAdder extends GeneratedBoogieAstTransformer {
		private Procedure procedure;
		private String pname;
	
		public P4LTL_DeclarationInformationAdder(Procedure p) {
			super();
			this.procedure = p;
			this.pname = p.getIdentifier();
		}
		
		private DeclarationInformation getDeclInfo (String id) {
			DeclarationInformation declinfo = DeclarationInformation.DECLARATIONINFO_GLOBAL;
			for(VarList vl : procedure.getOutParams()) {
				for(String identifier : vl.getIdentifiers()) {
					if(identifier.equals(id)) {
						declinfo = new DeclarationInformation(DeclarationInformation.StorageClass.IMPLEMENTATION_OUTPARAM, pname);
						break;
					}
				}
			}
			return declinfo;
		}
		
		@Override
	    public Expression transform(FunctionApplication node) {
//			String funcName = node.getIdentifier();
////			System.out.println("=== identifier is: " + node.getIdentifier()
////			+ " Type is: " + node.getType());
//			if(funcName.startsWith("add.bv") || funcName.startsWith("minus.bv"))
//			{
//				int length = Integer.parseInt(funcName.substring(funcName.indexOf("bv") + 2));
//				BoogieType bvType = BoogieType.createBitvectorType(length);
//				// System.out.println("=== Set type to " + bvType);
//				Expression[] newArgs = node.getArguments();
//				for(int i = 0; i < newArgs.length; ++i)
//				{
//					newArgs[i] = newArgs[i].accept(this);
//					newArgs[i].setType(bvType);
//					// System.out.println("===" + newArgs[i] + ": Set type to " + newArgs[i].getType());
//				}
////				for(Expression e: newArgs)
////				{
////					System.out.println("===" + e + ": type is " + e.getType());
////				}
//				return new FunctionApplication(node.getLoc(), bvType, node.getIdentifier(), newArgs);
//			}
			
	        return node;
	    }
		
		@Override 
		public VariableLHS transform(final VariableLHS node) {
			String id = node.getIdentifier();
			DeclarationInformation declinfo = this.getDeclInfo(id);
			return new VariableLHS(node.getLocation(), node.getType(), id, declinfo);
		}
		
		@Override
		public Expression transform(final IdentifierExpression node) {
			// System.out.println("===== Encounting id: " + node.getType());
			String id = node.getIdentifier();
			DeclarationInformation declinfo = this.getDeclInfo(id);
			// System.out.println("===== Emitting new id: " + new IdentifierExpression(node.getLocation(), BoogieType.TYPE_INT, id, declinfo).getType());
			// UGLY: set every identifier to int, for ipmask it is good
			return new IdentifierExpression(node.getLocation(), BoogieType.TYPE_INT, id, declinfo);
		}
		
		@Override
		public Expression transform(final BinaryExpression node) {
//			System.out.println("+++++ Left: " + node.getLeft());
//			System.out.println("===== Left type: " + node.getLeft().getType());
//			System.out.println("+++++ Right: " + node.getRight());
//			System.out.println("===== Right type: " + node.getRight().getType());
			// UGLY: set every identifier to int, for ipmask it is good
			return node;
		}
		
		@Override
		public Expression transform(final IntegerLiteral node) {
			node.setType(BoogieType.TYPE_INT);
			return node;
		}
	}
}

