#!/bin/bash

#for multiple env vars VFILES1, VFILES2..
#FILES_ENV_VARS=("${!VFILES*}")
#FILES_ENV_VARS_ARRAY=(${FILES_ENV_VARS// / })

#for one env var conatining space separated URLs
FILES="${VFILES}"
FILES_ARRAY=( $FILES )

for i in ${FILES_ARRAY[@]}; do
     wget --no-check-certificate ${i} 
done

npm install
node index.js
