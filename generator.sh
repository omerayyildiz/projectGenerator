#!/bin/bash
clear
cyan=`tput setaf 6`

read -p "${cyan}Please, input client ID:${reset}" CLIENT_ID
CLIENT_ID="$( echo ${CLIENT_ID} | tr a-z A-Z )" && CLIENT_ID=${CLIENT_ID:0:3}

read -p "${cyan}Please, input year of project:${reset}" YEAR
YEAR=${YEAR:2:2}

read -p "${cyan}Please, input job ID:${reset}" JOB_ID
read -p "${cyan}Please, input job description with:${reset}" JOB_DESCRIPTON

if [[ $(( JOB_ID % 10 )) == 0 ]]; then
    mkdir "${CLIENT_ID}${YEAR}0${JOB_ID} (${JOB_DESCRIPTON})"
    DIR="${CLIENT_ID}${YEAR}0${JOB_ID} (${JOB_DESCRIPTON})"
else
    mkdir "${CLIENT_ID}${YEAR}00${JOB_ID} (${JOB_DESCRIPTON})"
    DIR="${CLIENT_ID}${YEAR}00${JOB_ID} (${JOB_DESCRIPTON})"   
fi

cd "${DIR}" && mkdir input output workspace workspace/assets