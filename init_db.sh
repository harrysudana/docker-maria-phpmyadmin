echo "** Creating default DB and users"

mysql -u root -p${DB_ROOT_PASSWORD} <<-EOF
GRANT ALL PRIVILEGES ON  \`${DB_USER_NAME}\\_%\`.* TO  '${DB_USER_NAME}'@'%';
FLUSH PRIVILEGES;
EOF

#mysql -u root -p${DB_ROOT_PASSWORD} --execute \
#"CREATE DATABASE IF NOT EXISTS ${DB_USER_NAME}_test; 
#GRANT ALL PRIVILEGES ON \`${DB_USER_NAME}\\_%\`.* TO '${DB_USER_NAME}'@'%';
#DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
#FLUSH PRIVILEGES;"

echo "** Finished creating default DB and users"
