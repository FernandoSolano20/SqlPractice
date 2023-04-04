CREATE TABLE [dbo].[employee](
	[id] [int] NOT NULL,
	[name] [nchar](100) NOT NULL,
	[last_name] [nchar](100) NOT NULL,
	[email] [nchar](200) NOT NULL,
	[salary] [int] NOT NULL,
	[gender] [nchar](10) NOT NULL,
	[city] [nchar](100) NOT NULL,
) ON [PRIMARY]


INSERT INTO employee VALUES (30, 'Armida', 'Galiano Vélez', 'armidagalianovélez@gmail.com', 3500, 'Femenino', 'Austin')
INSERT INTO employee VALUES (27, 'José', 'Antonio Carbó Sierra', 'joséantoniocarbósierra@gmail.com', 2500, 'Masculino', 'New York')
INSERT INTO employee VALUES (45, 'Jacinto', 'Caro Cobos', 'jacintocarocobos@gmail.com', 5500, 'Masculino', 'Dallas')
INSERT INTO employee VALUES (85, 'Blanca', 'Vicens-Téllez', 'blancavicens-téllez@gmail.com', 6700, 'Femenino', 'San Jose')
INSERT INTO employee VALUES (36, 'Albert', 'Ferreras', 'albertferreras@gmail.com', 5500, 'Masculino', 'Austin')
INSERT INTO employee VALUES (108, 'Pilar', 'Galiano Valenciano', 'pilargalianovalenciano@gmail.com', 6500, 'Femenino', 'Los Angeles')
INSERT INTO employee VALUES (11, 'José', 'Machado Serrano', 'joséángelmachadoserrano@gmail.com', 4300, 'Masculino', 'Las Vegas')
INSERT INTO employee VALUES (26, 'Sara', 'de Lillo', 'saradelillo@gmail.com', 8500, 'Femenino', 'Houston')


/***
1- Hacer una consulta y observar los datos.
2- Crear un clustered index por el id y realizar la consulta
3- Borrar ese clustered index.
4- Crear un clustered index compuesto por el genero descentemente y salario ascendentemente y realizar la consulta
5- Borrar ese clustered index.
6- Crear un uncluster index para el salario
7- Hacer una consulta para obtener los empleados con los salarios mayores a 5000 pero menor 7000
***/