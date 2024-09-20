/*
 * Copyright (C) 2023 Manuel Bentele (bentele@informatik.uni-freiburg.de)
 * Copyright (C) 2023 University of Freiburg
 *
 * This file is part of the ULTIMATE WitnessParser plug-in.
 *
 * The ULTIMATE WitnessParser plug-in is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * The ULTIMATE WitnessParser plug-in is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE WitnessParser plug-in. If not, see <http://www.gnu.org/licenses/>.
 *
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE WitnessParser plug-in, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP),
 * containing parts covered by the terms of the Eclipse Public License, the
 * licensors of the ULTIMATE WitnessParser plug-in grant you additional permission
 * to convey the resulting work.
 */

package de.uni_freiburg.informatik.ultimate.witnessparser.yaml;

import com.amihaiemil.eoyaml.Yaml;
import com.amihaiemil.eoyaml.YamlNode;

/**
 * @author Manuel Bentele (bentele@informatik.uni-freiburg.de)
 */
public class LoopInvariant extends WitnessEntry {

	/**
	 * Witness entry name of the YAML witness format.
	 */
	public static final String NAME = "loop_invariant";

	private final Location mLocation;
	private final Invariant mInvariant;

	public LoopInvariant(final Metadata metadata, final Location location, final Invariant invariant) {
		super(NAME, metadata);
		mLocation = location;
		mInvariant = invariant;
	}

	public Location getLocation() {
		return mLocation;
	}

	public Invariant getInvariant() {
		return mInvariant;
	}

	@Override
	public String toString() {
		return getClass().getSimpleName() + " " + mLocation + ": " + mInvariant;
	}

	@Override
	public YamlNode toYaml() {
		return Yaml.createYamlMappingBuilder().add("entry_type", NAME).add("metadata", mMetadata.toYaml())
				.add("location", mLocation.toYaml()).add(NAME, mInvariant.toYaml()).build();
	}
}
