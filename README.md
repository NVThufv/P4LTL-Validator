# P4TV

This repository contains the backend implementation for automata verification used in our approach, a modified and more recent version of [Ultimate Automizer](https://github.com/ultimate-pa/ultimate/tree/c7155768) compared to the `release` branch, as detailed in the paper *"On Temporal Verification of Stateful P4 Programs," NSDI '25*.

## Build Instructions

### Building with Eclipse

For Eclipse setup, please refer to the guide: [Installation · ultimate-pa/ultimate Wiki](https://github.com/ultimate-pa/ultimate/wiki/Installation).

### Building with Command Line

#### Prerequisites

- **Java JDK (version > 11)**: Please note, the Java Runtime Environment (JRE) is insufficient.
- **Maven (version > 3.0)**: You can download it from [here](http://maven.apache.org/download.cgi).

#### Build Steps

1. Navigate to the `trunk/source/BA_MavenParentUltimate` directory.
2. Run the following command to build the project:
   ```bash
   mvn clean install -Pmaterialize
   ```
3. Go to the `releaseScripts/default` directory.
4. Execute the script:
   ```bash
   ./makeP4LTL.sh
   ```
   *Note: For Windows, you can use Windows Subsystem for Linux (WSL) to run the script.*

5. You will find the raw binaries (excluding external dependencies like Z3) in the `trunk/source/BA_SiteRepository/target/products` directory. The zipped binaries are located at `releaseScripts/default/UltimateP4LTL-linux.zip`, and the unzipped files are in `releaseScripts/default/UP4LTL-linux`.

6. To test the build, run the following command in the binary build directory (refer to step 5):
   ```bash
   ./P4LTL.sh example.bpl
   ```
   This should report a counterexample violating a simple property like: *"The packet will eventually be dropped,"* showing a trace where packets are continually forwarded.
