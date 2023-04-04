CREATE TABLE [dbo].[employee](
	[id] [int] NOT NULL,
	[name] [nchar](100) NOT NULL,
	[last_name] [nchar](100) NOT NULL,
	[email] [nchar](200) NOT NULL,
	[salary] [int] NOT NULL,
	[gender] [nchar](10) NOT NULL,
	[city] [nchar](100) NOT NULL,
	[id_department] [int] NOT NULL,
) ON [PRIMARY]

CREATE TABLE [dbo].[department](
	[id] [int] NOT NULL,
	[name] [nchar](100) NOT NULL,
	CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED
	(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FK_employee_department] FOREIGN KEY([id_department])
REFERENCES [dbo].[department] ([id])

INSERT INTO department VALUES (2, 'Gerencia')
INSERT INTO department VALUES (4, 'Recursos Humanos')
INSERT INTO department VALUES (1, 'Desarrollo')
INSERT INTO department VALUES (3, 'Servicio al cliente')

INSERT INTO employee VALUES (30, 'Armida', 'Galiano Vélez', 'armidagalianovélez@gmail.com', 3500, 'Femenino', 'Austin', 1)
INSERT INTO employee VALUES (27, 'José', 'Antonio Carbó Sierra', 'joséantoniocarbósierra@gmail.com', 2500, 'Masculino', 'New York', 3)
INSERT INTO employee VALUES (45, 'Jacinto', 'Caro Cobos', 'jacintocarocobos@gmail.com', 5500, 'Masculino', 'Dallas', 4)
INSERT INTO employee VALUES (85, 'Blanca', 'Vicens-Téllez', 'blancavicens-téllez@gmail.com', 6700, 'Femenino', 'San Jose', 2)
INSERT INTO employee VALUES (36, 'Albert', 'Ferreras', 'albertferreras@gmail.com', 5500, 'Masculino', 'Austin', 3)
INSERT INTO employee VALUES (108, 'Pilar', 'Galiano Valenciano', 'pilargalianovalenciano@gmail.com', 6500, 'Femenino', 'Los Angeles', 4)
INSERT INTO employee VALUES (11, 'José', 'Machado Serrano', 'joséángelmachadoserrano@gmail.com', 4300, 'Masculino', 'Las Vegas', 1)
INSERT INTO employee VALUES (26, 'Sara', 'de Lillo', 'saradelillo@gmail.com', 8500, 'Femenino', 'Houston', 1)


/***
1- Crear un clustered index compuesto por el nombre descentemente y apellido ascendentemente y realizar la consulta
2- Crear un uncluster index para el salario
3- Hacer un noncluster del inner join entre empleados y departamentos 
4- Hacer una consulta para obtener el nombre, apellidos y departamento de los empleados con los salarios mayores a 5000
***/