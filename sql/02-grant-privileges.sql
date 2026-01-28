-- Grant the user ability to create databases
GRANT CREATE, DROP ON *.* TO '${DATABASE_USER}'@'%';
FLUSH PRIVILEGES;