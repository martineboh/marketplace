REPO_DIR=$(shell pwd)

help:
	@echo "\nDATABASE COMMANDS\n"
	@echo "make create.{schema_name}        # create the database"
	@echo "make start.{schema_name}         # run all pending migrations"
	@echo "make new.{schema_name}           # create a new migration file"

	@echo "\nHELPERS\n"
	@echo "env        # loads the .env file into environment"


#########################
# DATABASE COMMANDS 
#########################

create.%:
	cd $*; echo "I'm in some_dir"; 

up.%:
	cd $*; echo "I'm in some_dir"; 

new.%:
	cd $*; dbmate new RENAME;
	echo "\n\nMake sure to rename the file with a useful description!"


#########################
# HELPERS 
#########################

env:
	export $(grep -v '^#' .env | xargs -d '\n')