# u-know
Proyecto 5 de Factoria F5

# Contexto de trabajo
Creación de base de datos para una futura plataforma de intercambio de conocimientos y aprendizaje cooperativo. Nuestra aplicación se basará en el sistema de recompensas para mantener la calidad de los contenidos y favorecer la participación.

# Nuestra Base de Datos
Esta base de datos cuenta las siguientes relaciones: 
- Usuario que tiene un id, nombre, correo, contraseña y un saldo inicial de 1000 knowlitos.
- Cursos que tienen un id, título, autor, valor, puntuación, y contenido. Estos pueden ser clasificados por temas y dificultades. 
- El usuario puede comprar un curso y este puede estar en distintos estados: comprado, iniciado y finalizado. 
- Luego de consumir el curso el usuario puede comentarlo y puntuarlo. 
- El usuario va a ser capaz de crear un nuevo curso. 

# Diseño de base de datos
![uknow](https://github.com/EvangeRodriguez/u-know/assets/131253299/a50e3d89-e6f7-492a-8a4b-f121b1ac6232)

# Modelos de consultas 
-- Ver datos de curso: 
SELECT * FROM curso;

-- Ver datos de dificultad: 
SELECT * FROM dificultad;

-- Ver datos de estado:  
 SELECT * FROM estado;

-- Ver datos de temática:  
SELECT * FROM temática;

-- Ver datos de usuario:  
 SELECT * FROM usuario;

-- Buscar el usuario con el id 45:

SELECT * FROM usuario WHERE id_usuario = 45 ; 

-- Buscar todos los cursos con temática 3 (alta):

SELECT * FROM curso WHERE temática = 3; 

-- Buscar el curso que está haciendo el id 5:

SELECT * FROM curso WHERE autor = 5

-- Buscar cursos de dificultad 2 (media):

SELECT * FROM curso WHERE dificultad = 2

-- Buscar cursos llamados "introducción a CSS":

SELECT * FROM curso WHERE título = 'introducciona CSS'

# Base de datos
Proyecto en mySql: proyecto_uknow.sql

Para poder realizar nuestra base de datos usamos como "modelo" el siguiente excel: 
[usuario.xlsx](https://github.com/EvangeRodriguez/u-know/files/11652258/usuario.xlsx)

# Fichero de dump de la base de datos

Comentarios: proyecto_definitivo_comentario.sql

Curso: proyecto_definitivo_curso.sql 

Dificultad: proyecto_definitivo_dificultad.sql 

Puntuación: proyecto_definitivo_puntuacion.sql 

Temático: proyecto_definitivo_temática.sql 

Usuario: proyecto_definitivo_usuario.sql 

Relación usuario/estado/curso: proyecto_definitivo_usuario_estado_curso.sql 
