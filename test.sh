#!/bin/bash
clear
yellow=`tput setaf 3`
cyan=`tput setaf 6`
reset=`tput sgr0`

echo "${yellow}Where is the generator:${reset} $LOCATION_CHECKER"
echo "------------------------------------"
echo "${cyan}PASSED!${reset}"
echo "------------------------------------"

echo "${yellow}Job ID Status:${reset} $JOB_ID_CHECKER"
echo "------------------------------------"
echo "${cyan}PASSED!${reset}"
echo "------------------------------------"

printf "${yellow}Zone Status:${reset}\n${LIST_PROJECTS}\n"
echo "------------------------------------"
echo "${cyan}PASSED!${reset}"
echo "------------------------------------"

echo "${yellow}Project DIR Status:${reset} $PROJECT_DIR"
echo "------------------------------------"
echo "${cyan}PASSED!${reset}"
echo "------------------------------------"

printf "${yellow}Project Tree Status:${reset}\n ${PROJECT_TREE}\n"
echo "------------------------------------"
echo "${cyan}PASSED!${reset}"
echo "------------------------------------"