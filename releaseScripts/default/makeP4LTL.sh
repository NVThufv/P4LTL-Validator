#!/bin/bash
# This script copys the additional binaries from the adds/ folder for P4LTL, we use z3, cvc4, mathsat and ltl2ba
# It also adds README, P4LTL.sh, and various license files 

## include the makeSettings shared functions 
DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/makeSettings.sh"

## start the actual script 
if [ $# -lt 1 ]; then
    echo "Not enough arguments supplied -- use arguments in the following order"
	echo "1. 'linux' or 'win32' for the target platform"
    exit 1
fi

TOOLNAME="P4LTL"
LCTOOLNAME="$(echo $TOOLNAME | tr '[A-Z]' '[a-z]')"
echo "Using $TOOLNAME ($LCTOOLNAME) as toolname"


# additional files for all architectures 
ADDS=(
    "adds/LICENSE*"
    "adds/*LICENSE"
    "adds/Ultimate.py"
    "adds/Ultimate.ini"
    "adds/README"
)

# architecture-specific variables  
if [ "$1" == "linux" ]; then
    echo "Building .zip for linux..."
	ARCH="linux"
	ARCHPATH="products/CLI-E4/linux/gtk/x86_64"
    ADDS+=("adds/z3" "adds/cvc4nyu" "adds/cvc4" "adds/mathsat" "adds/ltl2ba") 
elif [ "$1" == "win32" ]; then
	echo "Building .zip for win32..."
	ARCH="win32"
	ARCHPATH="products/CLI-E4/win32/win32/x86_64"
    ADDS+=("adds/z3.exe" "adds/cvc4nyu.exe" "adds/cvc4.exe" "adds/mathsat.exe" "adds/ltl2ba.exe" "adds/mpir.dll" "adds/mathsat.dll") 
else
    echo "Wrong argument: ""$1"" -- use 'linux' or 'win32'"		
	exit 1
fi


# set version 
VERSION=`git rev-parse HEAD | cut -c1-8`
echo "Version is "$VERSION


TARGETDIR=U${TOOLNAME}-${ARCH}
CONFIGDIR="$TARGETDIR"/config
DATADIR="$TARGETDIR"/data
ZIPFILE=${TOOLNAME}-${ARCH}.zip
EXAMPLES=../../trunk/examples/P4LTL/example.bpl
SETTINGS=../../trunk/examples/P4LTL/P4LTL*.epf
TOOLCHAIN=../../trunk/examples/P4LTL/P4LTL.xml
PARSECHAIN=../../trunk/examples/P4LTL/JustParse.xml
EXESCRIPT=../../trunk/examples/P4LTL/P4LTL.sh
CHECKSCRIPT=../../trunk/examples/P4LTL/Check.sh
PARSESCRIPT=../../trunk/examples/P4LTL/ParseP4LTL.sh



## removing files and dirs from previous deployments 
if [ -d "$TARGETDIR" ]; then
	echo "Removing old ""$TARGETDIR"
	rm -r "$TARGETDIR"
fi
if [ -f "${ZIPFILE}" ]; then
    echo "Removing old .zip file ""${ZIPFILE}"
	rm "${ZIPFILE}"
fi

## start copying files 
echo "Copying files"
mkdir "$TARGETDIR"
mkdir "$CONFIGDIR"
mkdir "$DATADIR"

test cp -a ../../trunk/source/BA_SiteRepository/target/${ARCHPATH}/* "$TARGETDIR"/
test cp ${EXAMPLES} "$TARGETDIR"/
test cp ${EXESCRIPT} "$TARGETDIR"/
test cp ${CHECKSCRIPT} "$TARGETDIR"/
test cp ${PARSESCRIPT} "$TARGETDIR"/
test cp ${TOOLCHAIN} "$CONFIGDIR"/
test cp ${PARSECHAIN} "$CONFIGDIR"/
test cp ${SETTINGS} "$CONFIGDIR"/

## copy all adds to target dir 
for add in "${ADDS[@]}" ; do 
    if ! readlink -fe $add > /dev/null ; then 
        echo "$add does not exist, aborting..." 
        exit 1
    fi 
    test cp $add "$TARGETDIR"/
done 


echo "Modifying Ultimate.py with version and toolname"
## replacing version value in Ultimate.py
test sed "s/^version =.*$/version = \'$VERSION\'/g" "$TARGETDIR"/Ultimate.py > "$TARGETDIR"/Ultimate.py.tmp && mv "$TARGETDIR"/Ultimate.py.tmp "$TARGETDIR"/Ultimate.py && chmod a+x "$TARGETDIR"/Ultimate.py

## replacing toolname value in Ultimate.py
test sed "s/toolname =.*/toolname = \'$TOOLNAME\'/g" "$TARGETDIR"/Ultimate.py > "$TARGETDIR"/Ultimate.py.tmp && mv "$TARGETDIR"/Ultimate.py.tmp "$TARGETDIR"/Ultimate.py && chmod a+x "$TARGETDIR"/Ultimate.py

## creating new zipfile 
echo "Creating .zip"
test zip -q ${ZIPFILE} -r "$TARGETDIR"/*

## removing all products
echo "Removing products..."
rm -r ../../trunk/source/BA_SiteRepository/target
rm -r "$TARGETDIR"
