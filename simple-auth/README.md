# Simple Auth

A basic user management system.

## Requirements

- PostgreSQL version: 9+
- Plugins: null

## Tables

- `Users`: stores the user info
- `Sessions`: for managing their logins
- `Credentials`: stored in a separate schema and contains encrypted passwords

## Functions

- Login
- Logout
- Change password
- Reset password
