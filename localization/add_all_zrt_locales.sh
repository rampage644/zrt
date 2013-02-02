#!/bin/bash

# This script read 'locales' file from current folder 
# and compiles all locales listed in that file also
# applying patch and wrap every locale into tar archive

LOCALES=locales

value=0
cat $LOCALES | while read line
do
    sh add_single_zrt_locale.sh $line
done
