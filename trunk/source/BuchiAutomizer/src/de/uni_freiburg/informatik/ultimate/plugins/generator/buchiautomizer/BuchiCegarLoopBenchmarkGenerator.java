/*
 * Copyright (C) 2014-2015 Matthias Heizmann (heizmann@informatik.uni-freiburg.de)
 * Copyright (C) 2015 University of Freiburg
 *
 * This file is part of the ULTIMATE BuchiAutomizer plug-in.
 *
 * The ULTIMATE BuchiAutomizer plug-in is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * The ULTIMATE BuchiAutomizer plug-in is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE BuchiAutomizer plug-in. If not, see <http://www.gnu.org/licenses/>.
 *
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE BuchiAutomizer plug-in, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP),
 * containing parts covered by the terms of the Eclipse Public License, the
 * licensors of the ULTIMATE BuchiAutomizer plug-in grant you additional permission
 * to convey the resulting work.
 */
package de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import de.uni_freiburg.informatik.ultimate.lassoranker.LassoAnalysis.PreprocessingBenchmark;
import de.uni_freiburg.informatik.ultimate.lassoranker.termination.NonterminationAnalysisBenchmark;
import de.uni_freiburg.informatik.ultimate.lassoranker.termination.TerminationAnalysisBenchmark;
import de.uni_freiburg.informatik.ultimate.lib.modelcheckerutils.cfg.structure.IIcfgTransition;
import de.uni_freiburg.informatik.ultimate.lib.tracecheckerutils.CoverageAnalysis.BackwardCoveringInformation;
import de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer.LassoCheck.ContinueDirective;
import de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer.LassoCheck.SynthesisResult;
import de.uni_freiburg.informatik.ultimate.plugins.generator.buchiautomizer.LassoCheck.TraceCheckResult;
import de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.CegarLoopStatisticsGenerator;
import de.uni_freiburg.informatik.ultimate.util.statistics.IStatisticsType;

public class BuchiCegarLoopBenchmarkGenerator extends CegarLoopStatisticsGenerator {

	private final int[] mNontrivialModuleStages = new int[5];
	private final LassoAnalysisResults mLassoAnalysisResults = new LassoAnalysisResults();
	private BackwardCoveringInformation mBciFinite = new BackwardCoveringInformation(0, 0);
	private BackwardCoveringInformation mBciBuchi = new BackwardCoveringInformation(0, 0);
	private int mHighestRank;

	private final List<PreprocessingBenchmark> mPreprocessingBenchmarks = new ArrayList<>();
	private final List<TerminationAnalysisBenchmark> mTerminationAnalysisBenchmarks = new ArrayList<>();
	private final List<NonterminationAnalysisBenchmark> mNonterminationAnalysisBenchmarks = new ArrayList<>();
	private int mLassoNonterminationAnalysisSATFixpoint;
	private int mLassoNonterminationAnalysisSATUnbounded;
	private int mLassoNonterminationAnalysisUNSAT;
	private int mLassoNonterminationAnalysisUNKOWN;
	private long mLassoNonterminationAnalysisTime;
	private int mMinimizationOfDetAutom;
	private int mMinimizationOfNondetAutom;

	@Override
	public IStatisticsType getBenchmarkType() {
		return BuchiCegarLoopBenchmark.getInstance();
	}

	@Override
	public String[] getStopwatches() {
		final List<String> al = new ArrayList<>();
		al.addAll(Arrays.asList(super.getStopwatches()));
		al.add(BuchiCegarLoopBenchmark.NON_LIVE_STATE_REMOVAL);
		al.add(BuchiCegarLoopBenchmark.BUCHI_CLOSURE);
		al.add(BuchiCegarLoopBenchmark.NONTRIVIAL_MODUL_STAGES);
		al.add(BuchiCegarLoopBenchmark.LASSO_ANALYSIS_TIME);
		return al.toArray(new String[al.size()]);
	}

	public void announceSuccessfullRefinementStage(final int stage) {
		mNontrivialModuleStages[stage]++;
	}

	public void addBackwardCoveringInformationFinite(final BackwardCoveringInformation bci) {
		mBciFinite = new BackwardCoveringInformation(mBciFinite, bci);
	}

	public void addBackwardCoveringInformationBuchi(final BackwardCoveringInformation bci) {
		mBciBuchi = new BackwardCoveringInformation(mBciBuchi, bci);
	}

	@Override
	public Object getValue(final String key) {
		switch (key) {
		case BuchiCegarLoopBenchmark.NON_LIVE_STATE_REMOVAL:
		case BuchiCegarLoopBenchmark.BUCHI_CLOSURE:
		case BuchiCegarLoopBenchmark.LASSO_ANALYSIS_TIME:
			try {
				return getElapsedTime(key);
			} catch (final StopwatchStillRunningException e) {
				throw new AssertionError("clock still running: " + key);
			}
		case BuchiCegarLoopBenchmark.HIGHEST_RANK:
			return mHighestRank;
		case BuchiCegarLoopBenchmark.NONTRIVIAL_MODUL_STAGES:
			return mNontrivialModuleStages;
		case BuchiCegarLoopBenchmark.LASSO_ANALYSIS_RESULTS:
			return mLassoAnalysisResults;
		case BuchiCegarLoopBenchmark.INTERPOLANT_COVERING_CAPABILITY_FINITE:
			return mBciFinite;
		case BuchiCegarLoopBenchmark.INTERPOLANT_COVERING_CAPABILITY_BUCHI:
			return mBciBuchi;
		case BuchiCegarLoopBenchmark.LASSO_PREPROCESSING_BENCHMARKS:
			return mPreprocessingBenchmarks;
		case BuchiCegarLoopBenchmark.LASSO_TERMINATION_ANALYSIS_BENCHMARKS:
			return mTerminationAnalysisBenchmarks;
		case BuchiCegarLoopBenchmark.LASSO_NONTERMINATION_ANALYSIS_SAT_FIXPOINT:
			return mLassoNonterminationAnalysisSATFixpoint;
		case BuchiCegarLoopBenchmark.LASSO_NONTERMINATION_ANALYSIS_SAT_UNBOUNDED:
			return mLassoNonterminationAnalysisSATUnbounded;
		case BuchiCegarLoopBenchmark.LASSO_NONTERMINATION_ANALYSIS_UNSAT:
			return mLassoNonterminationAnalysisUNSAT;
		case BuchiCegarLoopBenchmark.LASSO_NONTERMINATION_ANALYSIS_UNKNOWN:
			return mLassoNonterminationAnalysisUNKOWN;
		case BuchiCegarLoopBenchmark.LASSO_NONTERMINATION_ANALYSIS_TIME:
			return mLassoNonterminationAnalysisTime;
		case BuchiCegarLoopBenchmark.MINIMIZATION_OF_DETERMINISTIC_AUTOMATA:
			return mMinimizationOfDetAutom;
		case BuchiCegarLoopBenchmark.MINIMIZATION_OF_NONDETERMINISTIC_AUTOMATA:
			return mMinimizationOfNondetAutom;
		default:
			return super.getValue(key);
		}
	}

	public void reportLassoAnalysis(final LassoCheck<? extends IIcfgTransition<?>> lassoCheck) {
		final var lcr = lassoCheck.getLassoCheckResult();
		mPreprocessingBenchmarks.addAll(lassoCheck.getPreprocessingBenchmarks());
		mTerminationAnalysisBenchmarks.addAll(lassoCheck.getTerminationAnalysisBenchmarks());
		mNonterminationAnalysisBenchmarks.addAll(lassoCheck.getNonterminationAnalysisBenchmarks());
		for (final NonterminationAnalysisBenchmark nab : lassoCheck.getNonterminationAnalysisBenchmarks()) {
			switch (nab.getConstraintsSatisfiability()) {
			case SAT:
				if (nab.isFixpoint()) {
					mLassoNonterminationAnalysisSATFixpoint++;
				} else {
					mLassoNonterminationAnalysisSATUnbounded++;
				}
				break;
			case UNKNOWN:
				mLassoNonterminationAnalysisUNKOWN++;
				break;
			case UNSAT:
				mLassoNonterminationAnalysisUNSAT++;
				break;
			default:
				throw new AssertionError();
			}
			mLassoNonterminationAnalysisTime += nab.getTime();
		}
		final ContinueDirective cd = lcr.getContinueDirective();
		switch (cd) {

		case REFINE_BOTH:
			if (lcr.getStemFeasibility() == TraceCheckResult.INFEASIBLE) {
				mLassoAnalysisResults.increment(LassoAnalysisResults.STEM_INFEASIBLE_LOOP_TERMINATING);
			} else {
				assert (lcr.getConcatFeasibility() == TraceCheckResult.INFEASIBLE);
				assert (lcr.getLoopTermination() == SynthesisResult.TERMINATING);
				mLassoAnalysisResults.increment(LassoAnalysisResults.CONCATENATION_INFEASIBLE_LOOP_TERMINATING);
			}
			break;
		case REFINE_BUCHI:
			assert lcr.getStemFeasibility() != TraceCheckResult.INFEASIBLE;
			if (lcr.getLoopTermination() == SynthesisResult.TERMINATING) {
				mLassoAnalysisResults.increment(LassoAnalysisResults.STEM_FEASIBLE_LOOP_TERMINATING);
			} else {
				assert lcr.getLassoTermination() == SynthesisResult.TERMINATING;
				mLassoAnalysisResults.increment(LassoAnalysisResults.LASSO_TERMINATING);
			}
			break;
		case REFINE_FINITE:
			if (lcr.getStemFeasibility() == TraceCheckResult.INFEASIBLE) {
				if (lcr.getLoopFeasibility() == TraceCheckResult.INFEASIBLE) {
					mLassoAnalysisResults.increment(LassoAnalysisResults.STEM_INFEASIBLE_LOOP_INFEASIBLE);
				} else if (lcr.getLoopTermination() == SynthesisResult.NONTERMINATING) {
					mLassoAnalysisResults.increment(LassoAnalysisResults.STEM_INFEASIBLE_LOOP_NONTERMINATING);
				} else {
					assert lcr.getLoopFeasibility() == TraceCheckResult.UNCHECKED
							|| lcr.getLoopFeasibility() == TraceCheckResult.UNKNOWN
							|| lcr.getLoopTermination() == SynthesisResult.UNCHECKED
							|| lcr.getLoopTermination() == SynthesisResult.UNKNOWN : "lasso checking: illegal case";
					mLassoAnalysisResults.increment(LassoAnalysisResults.STEM_FEASIBLE_LOOP_UNKNOWN);
				}
			} else if (lcr.getLoopFeasibility() == TraceCheckResult.INFEASIBLE) {
				mLassoAnalysisResults.increment(LassoAnalysisResults.STEM_FEASIBLE_LOOP_INFEASIBLE);
			} else {
				assert lcr.getConcatFeasibility() == TraceCheckResult.INFEASIBLE;
				mLassoAnalysisResults.increment(LassoAnalysisResults.CONCATENATION_INFEASIBLE);
			}
			break;
		case REPORT_NONTERMINATION:
			assert lcr.getStemFeasibility() != TraceCheckResult.INFEASIBLE;
			assert lcr.getLoopFeasibility() != TraceCheckResult.INFEASIBLE;
			assert lcr.getConcatFeasibility() != TraceCheckResult.INFEASIBLE;
			assert lassoCheck.getNonTerminationArgument() != null;
			mLassoAnalysisResults.increment(LassoAnalysisResults.LASSO_NONTERMINATING);
			break;
		case REPORT_UNKNOWN:
			assert lcr.getStemFeasibility() != TraceCheckResult.INFEASIBLE;
			assert lcr.getLoopFeasibility() != TraceCheckResult.INFEASIBLE;
			assert lcr.getConcatFeasibility() != TraceCheckResult.INFEASIBLE;
			assert lassoCheck.getNonTerminationArgument() == null;
			mLassoAnalysisResults.increment(LassoAnalysisResults.TERMINATION_UNKNOWN);
			break;
		default:
			throw new AssertionError("unknown case");
		}
	}

	public void reportHighestRank(final int highestRank) {
		mHighestRank = Math.max(mHighestRank, highestRank);
	}

	public void reportMinimizationOfDetAutom() {
		mMinimizationOfDetAutom++;
	}

	public void reportMinimizationOfNondetAutom() {
		mMinimizationOfNondetAutom++;
	}
}
