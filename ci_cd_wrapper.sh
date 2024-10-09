#!/bin/bash 
# Run the Python script to check for changes 
python3 /CI_CD/check_github.py 

# If the Python script exits with 0 (changes detected), run the update script 
if [ $? -eq 0 ]; then    
	/CI_CD/update_website.sh 
fi
