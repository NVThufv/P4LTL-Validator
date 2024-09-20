/*
 * Copyright (C) 2013-2015 Daniel Dietsch (dietsch@informatik.uni-freiburg.de)
 * Copyright (C) 2014-2015 Matthias Heizmann (heizmann@informatik.uni-freiburg.de)
 * Copyright (C) 2015 University of Freiburg
 * 
 * This file is part of the ULTIMATE BlockEncoding plug-in.
 * 
 * The ULTIMATE BlockEncoding plug-in is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * The ULTIMATE BlockEncoding plug-in is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE BlockEncoding plug-in. If not, see <http://www.gnu.org/licenses/>.
 * 
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE BlockEncoding plug-in, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP), 
 * containing parts covered by the terms of the Eclipse Public License, the 
 * licensors of the ULTIMATE BlockEncoding plug-in grant you additional permission 
 * to convey the resulting work.
 */

package de.uni_freiburg.informatik.ultimate.plugins.generator.blockencoding.preferences;

import de.uni_freiburg.informatik.ultimate.blockencoding.rating.metrics.RatingFactory.RatingStrategy;
import de.uni_freiburg.informatik.ultimate.core.lib.preferences.UltimatePreferenceInitializer;
import de.uni_freiburg.informatik.ultimate.core.model.preferences.PreferenceType;
import de.uni_freiburg.informatik.ultimate.core.model.preferences.UltimatePreferenceItem;
import de.uni_freiburg.informatik.ultimate.plugins.generator.blockencoding.Activator;

public class PreferenceInitializer extends UltimatePreferenceInitializer {

	public PreferenceInitializer() {
		super(Activator.PLUGIN_ID, Activator.PLUGIN_NAME);
	}

	@Override
	protected UltimatePreferenceItem<?>[] initDefaultPreferences() {
		return new UltimatePreferenceItem[] {
				new UltimatePreferenceItem<Boolean>(LABEL_CALLMINIMIZE, false,
						PreferenceType.Boolean),
				new UltimatePreferenceItem<Boolean>(LABEL_EXECUTETESTS, false,
						PreferenceType.Boolean),
				new UltimatePreferenceItem<RatingStrategy>(LABEL_STRATEGY,
						RatingStrategy.DEFAULT, PreferenceType.Combo,
						RatingStrategy.values()),
				new UltimatePreferenceItem<Boolean>(LABEL_USESTATHEURISTIC,
						false, PreferenceType.Boolean),
				new UltimatePreferenceItem<Boolean>(LABEL_USEDYNAMICHEURISTIC,
						false, PreferenceType.Boolean),
				new UltimatePreferenceItem<String>(LABEL_RATINGBOUND, "",
						PreferenceType.String),

		};
	}

	public static final String LABEL_CALLMINIMIZE = "Minimize Call and Return Edges";

	public static final String LABEL_EXECUTETESTS = "Execute Unit-Tests, with special Observer";

	public static final String LABEL_STRATEGY = "Strategy for the edge rating";

	public static final String LABEL_RATINGBOUND = "Rating-Boundary (empty for LBE)";

	public static final String LABEL_USESTATHEURISTIC = "Enable Statistic-Based Heuristic ";

	public static final String LABEL_USEDYNAMICHEURISTIC = "Enable Dynamic-Based Heuristic ";

}
