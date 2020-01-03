REPO_DIR=$(shell pwd)

help:
	@echo "\nDATABASE COMMANDS\n"
	@echo "make start.{schema_name}         # run all pending migrations"
	@echo "make new.{schema_name}           # create a new migration file"

	@echo "\nHELPERS\n"
	@echo "env        # loads the .env file into environment"


#########################
# DATABASE COMMANDS 
#########################


db.up.%:
	cd $*; dbmate up; 

db.new.%:
	cd $*; dbmate new RENAME;
	echo "\n\nMake sure to rename the file with a useful description!"


#########################
# HELPERS 
#########################

test.%:
	docker-compose up
	cd $*; dbmate up;