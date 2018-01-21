#!/usr/bin/env bash
# 
# File:
#   view-shell-one-liners.sh
# 
# Description:
#   View all one-liners in unixfoundation/shell.
# 
# Usage note:
#   Cd to directory "one-liners/" and run.
# 

if [ "$(echo "$PWD" | sed 's/.*\///')" != 'one-liners' ]; then
  echo 'view-shell-one-liners.sh: not in directory "one-liners/"'
  exit 1
fi

for filePath in $(find . -type f -name '*.one-liners*'); do
  basePath="$(echo "${filePath}" | awk -F\/ '{print $(NF-2)}')"
  if [ "${basePath}" != "${prevBasePath}" ]; then
    echo '============================================'
    echo -e "  ${basePath}/"
    echo -e '============================================\n'
  fi
  prevBasePath="${basePath}"

  fileBasePath="$(echo "${filePath}" | awk -F\/ '{print $(NF-1),$(NF)}' | sed \
      's/ /\//')"
  echo -e "----- ${fileBasePath}"
  tail -n +8 "${filePath}" 
done
