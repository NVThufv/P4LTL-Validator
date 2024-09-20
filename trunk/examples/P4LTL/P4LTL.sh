#!/bin/bash
# note: file name should be absolute path
SCRIPT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
pushd $SCRIPT_DIR > /dev/null
if [ $# -eq 1 ]; then
    EPF_FILE="P4LTL.epf"
elif [ "$2" == "-l" ]; then
    EPF_FILE="P4LTL_LINEAR.epf"
elif [ "$2" == "-nl" ]; then
    EPF_FILE="P4LTL_NONLINEAR.epf"
else
    echo "Wrong argument: ""$2"" -- use '-l' or '-nl'"		
	exit 1
fi

# $JAVA_HOME/bin/java -Xmx4g -Xms4m -jar "${SCRIPT_DIR}/plugins/org.eclipse.equinox.launcher_1.5.800.v20200727-1323.jar" -tc "${SCRIPT_DIR}/config/P4LTL.xml" -s "${SCRIPT_DIR}/config/P4LTL.epf" -i $@
$JAVA_HOME/bin/java -Xmx32g -Xms4m -jar "${SCRIPT_DIR}/plugins/org.eclipse.equinox.launcher_1.5.800.v20200727-1323.jar" -tc "${SCRIPT_DIR}/config/P4LTL.xml" -s "${SCRIPT_DIR}/config/${EPF_FILE}" -i $1
popd > /dev/null
