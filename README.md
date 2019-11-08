# Supabase Schemas

An opensource repository of PostgreSQL schemas to get your projects started. We envisage this to hold some complete schemas that anyone can contribute to via new migration files, or completely new schemas. 

## Getting started

0. Install `make` and [dbmate](https://github.com/amacneil/dbmate)
1. Modify the `.sample.env` file and rename it to `.env`
2. Run `make create.{schema_name}`, where `{schema_name}` is subfolder in this repo
3. Run `make up.{schema_name}`