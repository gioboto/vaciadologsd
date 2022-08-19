#!/bin/bash
#
#script vaciadologs.sh
# Version : 1.0

# Version : 1.0
#Para vaciar los archivos de log que crecen de forma continua. Uso de cron
#Autor : Ing. Jorge Navarrete
#mail : jorge_n@web.de
#Fecha : 2016-02-18

#script archivalogsSFCpordia.sh
#Para vaciar los archivos de log que crecen de forma continua. Uso de cron

#
#
#===========================================================================
PATH=/bin:/usr/bin:/usr/sbin/
#===========================================================================
#Variables a cambiar según el sistema=======================================
###!!!!!!!! IMPORTANTE que los directorios de origen y destino inicien y terminen en "/"
LOG00="/home/bit4id/logs/10.1.55.14/local1.log"
LOG01="/home/bit4id/logs/10.1.55.17/local2.log"
LOG02="/home/bit4id/logs/PCHQUITO1SSFE01/user.log"

#===========================================================================
echo "#####################################"
date
/etc/init.d/rsyslog stop
sleep 3
echo "" > $LOG00
echo "log $LOG00 vaciado"

echo "" > $LOG01
echo "log $LOG01 vaciado"

echo "" > $LOG02
echo "log $LOG02 vaciado"

/etc/init.d/rsyslog start
date
echo "#####################################"

