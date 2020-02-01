REPO_DIR=$(shell pwd)

help:
	@echo "\nDATABASE COMMANDS\n"
	@echo "make load.schema.{schema_name}		# load the schema"
	@echo "make load.data.{schema_name}			# load the data"
	@echo "make dump.schema.{schema_name}		# dump the schema"
	@echo "make dump.data.{schema_name}			# dump the data"

	@echo "\nDOCKER\n"
	@echo "make db.start		# start a docker database"
	@echo "make db.stop		# stop docker database"
	@echo "make db.new		# start again with a fresh db"


#########################
# DATABASE COMMANDS 
#########################

load.schema.%:
	cat "$(REPO_DIR)"/$*/schema.sql | docker-compose exec -T db psql -U postgres -d postgres

load.data.%:
	cat "$(REPO_DIR)"/$*/data.sql | docker-compose exec -T db psql -U postgres -d postgres

dump.schema.%:
	docker-compose exec db \
	pg_dump \
	-U postgres \
	-s postgres \
	> "$(REPO_DIR)"/$*/schema.sql 

dump.data.%:
	docker-compose exec db \
	pg_dump \
	-U postgres \
	-a postgres \
	> "$(REPO_DIR)"/$*/data.sql 

#########################
# DOCKER 
#########################

db.start:
	docker-compose up

db.stop:
	docker-compose down

db.new:
	docker-compose down
	docker-compose up --force-recreate