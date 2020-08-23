#!/bin/bash

echo "Hello $1"
echo "Test $2"
time=$(date)
echo "::set-output name=time::$time"


ARRUSERLIST+=${2}

for item in ${ARRUSERLIST[@]}; do
    echo "ARRUSERLIST = ${item}"
done


## Started timestamp
STARTEDTIMESTAMP=`date '+%Y%m%d-%T' | sed -e 's/\://g'`
CURRENTDIR=`pwd`
INIFILE="${CURRENTDIR}/${STARTEDTIMESTAMP}.ini"
echo "[main]" > "${INIFILE}"
echo "  ##### parameter file" >> "${INIFILE}"
echo "[required]" >> "${INIFILE}"
echo "  STARTEDTIMESTAMP=\"${STARTEDTIMESTAMP}\"" >> "${INIFILE}"
echo "  WORKINGDIR=\"${OUTPUTDIR}\"" >> "${INIFILE}"
echo "  ARRUSERLIST=\"${ARRUSERLIST[@]}\"" >> "${INIFILE}"
echo "  INIFILE=\"${INIFILE}\"" >> "${INIFILE}"
echo "[optional]" >> "${INIFILE}"
echo "  SLACKNOTIFY=\"${PROXYINFO}\"" >> "${INIFILE}"

cat ${INIFILE}
