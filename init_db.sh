echo "** Creating default DB and users"

mariadb -uroot -p${DB_ROOT_PASSWORD} -e "
GRANT ALL PRIVILEGES ON  \`${DB_USER_NAME}\\_%\`.* TO  '${DB_USER_NAME}'@'%';
FLUSH PRIVILEGES;"

echo "** Finished creating default DB and users"
