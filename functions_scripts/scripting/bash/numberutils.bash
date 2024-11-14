#!/usr/bin/env bash
# 
# File:
#   numberutils.bash
# 
# Description:
#   Bash number utilities
# 

# ============================================
#   Validation
# ============================================

# Determine if a number is in range between <min> and <max> (inclusive).
# Usage:
#   isNumberInRange <number> <min> <max>
isNumberInRange() {
  [ "$#" -ne 3 ] && return 1
  [[ "${1}" =~ ^[0-9]+$ && "${2}" =~ ^[0-9]+$ && "${3}" =~ ^[0-9]+$ ]] || \
      return 1
  [ "${2}" -gt "${3}" ] && return 1
  [[ "${1}" -lt "${2}" || "${1}" -gt "${3}" ]] && return 0 || return 1
}

# ============================================
#   Value generation
# ============================================

# Generate a random number between <min> and <max> (inclusive).
# Usage:
#   generateRandomNumber <min> <max>
generateRandomNumber() {
  [ "$#" -ne 2 ] && return 1
  [[ "${1}" =~ ^[0-9]+$ && "${2}" =~ ^[0-9]+$ ]] || return 1
  [ "${1}" -gt "${2}" ] && return 1
  printf '%s' $(( ( RANDOM % ( "${2}" - "${1}" + 1 ) + "${1}" )))
}

# Generate a random decimal between ".00" and ".99".
# Usage:
#     generateRandomDecimal
function generateRandomDecimal {
    [ "$#" -ne 2 ] && return 1
    [[ "${1}" =~ ^[0-9]+\.[0-9]+$ && "${2}" =~ ^[0-9]+\.[0-9]+$ ]] || return 1
    out=$(bc <<< "scale=2; $(printf '0.%02d' $(( $RANDOM % 100))) / 2")
    if [ "${out}" = '0' ]; then out='.00'; fi
    printf '%s' "${out}"
}



# --------------------------------------------
#   REFERENCE
# --------------------------------------------
# 
# ============================================
#   Validation
# ============================================
# 
# # Determine if the given value is a number.
# # Usage:
# #   isNumber <value>
# isNumber() {
#   [[ "${1}" =~ ^[0-9]+$ ]] && return 0 || return 1
# }
# 
# # Usage:
# #   isNumberOrDecimal <value>
# isNumberOrDecimal() {
#   [[ "${1}" =~ ^[0-9]*(\.[0-9]+)?$ ]] && return 0 || return 1
# }
# 

