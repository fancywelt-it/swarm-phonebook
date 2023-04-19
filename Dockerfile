version: "3.9"
services:
  database:
    image: mysql:5.7
    environment:
      - MYSQL_ROOT_PASSWORD=P123456p
      - MYSQL_DATABASE=phonebook_db
      - MYSQL_USER=admin
      - MYSQL_PASSWORD=Clarusway_1
    configs:
      - source: init_table
        target: /docker-entrypoint-initdb.d/init.sql
    volumes:
      - db-data:/var/lib/mysql
    networks:
      - clarus-net

volumes:
  db-data:

networks:
  clarus-net:

configs:
  init_table:
    file: ./init.sql