#!/bin/bash

fhs-util.sh check


echo "[i] Generating passwords and names"
KEYSTORE_PASSWORD=$(fhs-util.sh pw)
KEY_PASSWORD=$(fhs-util.sh pw)
KEY_ALIAS=$(fhs-util.sh project)
STOREFILE=$(fhs-util.sh project).jks

echo "[i] Generate keystore"
keytool -genkey -v -keystore $STOREFILE -keyalg RSA -keysize 2048 -validity 99999 -alias $KEY_ALIAS

echo "[i] Generate key.properties file"

# storePassword=<password-from-previous-step>
# keyPassword=<password-from-previous-step>
# keyAlias=upload
# storeFile=<keystore-file-location>