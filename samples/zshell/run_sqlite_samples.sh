#!/bin/bash

echo Run sqlite samples

./genmanifest.sh sqlite/scripts/select.sql log/sqlite1.stdout /sqlite/data/zvm_netw.db log/sqlite1.stderr.log > sqlite/select_sqlite.manifest 
echo -------------------------------run sqlite #1: select
rm log/sqlite1.stdout -f
echo setarch x86_64 -R ${ZEROVM_ROOT}/zerovm -Msqlite/select_sqlite.manifest
setarch x86_64 -R ${ZEROVM_ROOT}/zerovm -Msqlite/select_sqlite.manifest
echo "stdout output >>>>>>>>>>"
cat log/sqlite1.stdout
