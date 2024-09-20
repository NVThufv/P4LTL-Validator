#!/bin/bash
# note: file name should be absolute path
SCRIPT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
pushd $SCRIPT_DIR > /dev/null
$JAVA_HOME/bin/java -Xmx4g -Xms4m -jar "${SCRIPT_DIR}/plugins/org.eclipse.equinox.launcher_1.5.800.v20200727-1323.jar" -tc "${SCRIPT_DIR}/config/P4LTL.xml" -s "${SCRIPT_DIR}/config/P4LTL.epf" -i $@
popd > /dev/null