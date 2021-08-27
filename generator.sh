#!/bin/bash
clear
cyan=`tput setaf 6`
gray=`tput setaf 245`
reset=`tput sgr0`

VAULT_DIR="${HOME}/Documents/ART"
cd "${VAULT_DIR}/TRANSITION_ZONE"

export LOCATION_CHECKER="$(pwd)"

read -p "${cyan}Please, input client's name: ${reset}" CLIENT_ID
CLIENT_ID="$( echo ${CLIENT_ID} | tr a-z A-Z )" && CLIENT_ID=${CLIENT_ID:0:3}

read -p "${cyan}Please, input year of project ${gray}($(date +%Y))${reset}: " YEAR
YEAR=${YEAR:2:2}

if [[ $YEAR == "" ]]; then
    YEAR="$(date +%Y)"
    YEAR=${YEAR:2:2}
fi

read -p "${cyan}Please, input job ID: ${reset}" JOB_ID

read -p "${cyan}Please, input job description: ${reset}" JOB_DESCRIPTON
JOB_DESCRIPTON="$( echo ${JOB_DESCRIPTON} | tr A-Z a-z )"

if (( $JOB_ID / 10 != 0 )); then
    mkdir "${CLIENT_ID}${YEAR}0${JOB_ID} (${JOB_DESCRIPTON})"
    PROJECT_DIR="${CLIENT_ID}${YEAR}0${JOB_ID} (${JOB_DESCRIPTON})"
    export JOB_ID_CHECKER="${PROJECT_DIR}"

else
    mkdir "${CLIENT_ID}${YEAR}00${JOB_ID} (${JOB_DESCRIPTON})"
    PROJECT_DIR="${CLIENT_ID}${YEAR}00${JOB_ID} (${JOB_DESCRIPTON})"
    export JOB_ID_CHECKER="${PROJECT_DIR}"
fi

export LIST_PROJECTS="$(cd "${VAULT_DIR}/TRANSITION_ZONE" && ls)"
export PROJECT_DIR

cd "${PROJECT_DIR}" && mkdir input output workspace workspace/assets
export PROJECT_TREE="$(tree -l)"

# [ TEST SCRIPT ]
# cd /Users/omerayyildiz/Desktop/projectGenerator
# bash test.sh