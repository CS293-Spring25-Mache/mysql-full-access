-- Grant the user ability to create databases
GRANT CREATE, DROP ON *.* TO 'fakeAirbnbUser'@'%';
FLUSH PRIVILEGES;