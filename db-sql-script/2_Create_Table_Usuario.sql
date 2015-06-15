create table Usuario(
	Id_Usuario int not null auto_increment,
    Nome varchar(100),
    Data_Nascimento varchar(20),
    Telefone integer,
    CPF_CNPJ integer,
	Email varchar(255),
	Senha varchar(255),
    constraint PK_Usuario_Id_Usuario Primary Key(Id_Usuario)
)