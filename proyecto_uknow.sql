USE proyecto_definitivo; 
-- Ver datos de curso: 
-- SELECT * FROM curso;

-- Ver datos de dificultad: 
-- SELECT * FROM dificultad;

-- Ver datos de estado:  
-- SELECT * FROM estado;

-- Ver datos de temática:  
-- SELECT * FROM temática;

-- Ver datos de usuario:  
-- SELECT * FROM usuario;


-- Buscar el usuario con el id 45
-- SELECT * FROM usuario WHERE id_usuario = 45 ; 

-- Buscar todos los cursos con temática 3 (alta)
-- SELECT * FROM curso WHERE temática = 3; 

-- Buscar el curso que está haciendo el id 5
SELECT * FROM curso WHERE autor = 5
