#!/bin/bash
#
# 
FILE_NAME=/home/admin/bin/CS_Steuerung_Hilfe.md
FILE_RIGHTS=444

ssh -n admin@caterva chmod $FILE_RIGHTS $FILE_NAME

REAL_FILE_RIGHTS=`ssh -n admin@caterva stat -c '%a' $FILE_NAME`

case $REAL_FILE_RIGHTS in
    $FILE_RIGHTS ) 
        echo SUCCESS;;
    * )
        echo NO_SUCCESS;;
esac        