# Corvette Airlines

Tecnologias:
- Java
- Tomcat
- Maven
- Mysql
- Hibernate
- Spring MVC

### Database Scripts 

/db-sql-script/

###Execute na ordem correta para criar a base: 

1 - Create_Squema.sql

2 - Create_Database.sql

###Importe o Projeto para o Eclipe JEE

*Substitua as variáveis pelas configurações do seu Mysql:*

target/classes/config.properties

src/main/java/config.properties


MYSQL_PORT = your mysql port

MYSQL_USER = your mysql user

MYSQL_PASSWORD = your mysql password

###Execute o projeto no Eclipse

Tomcat v-7.0 é necessário

###Acesse:

http://localhost:{MYSQL_PORT}/Corvette/index.html

###Dados de Login:

USER: admin@corvetteagency.com

PASSWORD: corvette-007

###Regras de Negócio no arquivo markdown:

Regras_de_negocio.md
