-- Grant the user the ability to create and manage any database
GRANT ALL PRIVILEGES ON *.* TO '{DATABASE_USER}'@'%';
FLUSH PRIVILEGES;