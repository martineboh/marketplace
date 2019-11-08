# Simple Auth

A basic user management system.

## Tables

- `Users`: stores the user info
- `Sessions`: for managing their logins
- `Credentials`: stored in a separate schema and contains encrypted passwords

## Functions

- Login
- Logout
- Change password
- Reset password


## Using with PostgREST


- Users
  - `GET /users`: Get all users
  - `POST /users`: Add a user
  - `PATCH /users?id=eq.<id>`: UPDATE user `<id>`
  - `DELETE /users?id=eq.<id>`: DELETE a user `<id>`
- Sessions
- Credentials
- Login
  - `POST /rpc/login`
- Logout
  - `POST /rpc/logout`
- Change password
  - `POST /rpc/change_password`
- Reset password
  - `POST /rpc/reset_password`