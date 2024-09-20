#!/bin/bash
set -e
CUR_DIR="$(pwd)"
SCRIPT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
## start the actual script 
if [ $# -lt 2 ]; then
    echo "Not enough arguments supplied -- use arguments in the following order"
	echo "1. Path to P4 file."
	echo "2. Path to P4LTL file."
    exit 1
fi
TMP_BOOGIE="p4_boogie.bpl"
FINAL_BOOGIE="${SCRIPT_DIR}/p4ltl_boogie.bpl"
OLD_BOOGIE="${SCRIPT_DIR}/~p4ltl_boogie.bpl"
# CUR_BOOGIE="${CUR_DIR}/p4ltl_boogie.bpl"
echo -e "\n[P4 + P4LTL->Boogie]:"
p4c-translator $1 --ua2 --p4ltl $2 -o $FINAL_BOOGIE
echo -e "\n[Boogie Line Num]"
wc -l $FINAL_BOOGIE
echo -e "\n[Boogie->Verified Result]:"
if [ $# -ge 3 ]; then
    ${SCRIPT_DIR}/P4LTL.sh $FINAL_BOOGIE $3
else
    ${SCRIPT_DIR}/P4LTL.sh $FINAL_BOOGIE
fi
mv $FINAL_BOOGIE "$OLD_BOOGIE"
# cp "$OLD_BOOGIE" "$CUR_BOOGIE"
