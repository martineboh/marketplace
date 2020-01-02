# PostgreSQL Schemas

An opensource repository of PostgreSQL schemas to get your projects started. 

Complete, tested schemas that anyone can contribute to via new migration files. 

## Getting started

- Every folder is a template / schema
- Every folder has a file called `db.sql` which contains the full schema.
- Every folder contains [dbmate](https://github.com/amacneil/dbmate) migrations, so you can fork this repo and then continue to apply updates to your database as we make improvements.

## Keeping your database updated

If you choose to use the migration files provided then you can continue to apply our updates to your own schema.

1. Fork this repo. In the schema you are using:
2. Modify the `.sample.env` file and rename it to `.env`
3. Run `dbmate create`
4. Run `dbmate up`
5. Whenever there are updates, just pull the repo and run `dbmate up`.

## License

MIT
Copyright Supabase 2019