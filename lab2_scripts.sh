#!/bin/bash
# Authors : Ryan Campbell
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter Regex: "
read usrReg
echo "Enter File Name: "
read usrFile
grep $usrReg $usrFile
grep -o '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt | wc -l
grep -o '\w\+\(\@\w\+\.\)\+\w\+' regex_practice.txt | wc -l
grep -o '303\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt > phone_results.txt
grep -o '\w\+\(\@geocities\+\.\)\+\w\+' regex_practice.txt > email_results.txt
if [ -z "$1" ]
then
	echo "No Regex Argument."
else
	grep -o $1 regex_practice.txt > command_results.txt
fi
git add phone_results.txt
git add email_results.txt
git add command_results.txt
git commit -m "Script Run"