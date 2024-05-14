-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- SELECT nombre, lenguaje FROM usuarios_lenguajes;


-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- SELECT COUNT(nombre) FROM usuarios_lenguajes;


-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- SELECT COUNT(edad) FROM usuarios_lenguajes WHERE edad > 30;


-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- SELECT COUNT(lenguaje) FROM usuarios_lenguajes WHERE lenguaje = 'JavaScript';


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- SELECT * FROM usuarios_lenguajes WHERE edad = 28;


-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- SELECT * FROM usuarios_lenguajes WHERE email = 'juan.gomez@example.com';


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- SELECT COUNT(lenguaje) FROM usuarios_lenguajes WHERE lenguaje = 'Java' AND edad < 25;


-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
-- SELECT COUNT(DISTINCT edad) AS num_edades FROM usuarios_lenguajes WHERE lenguaje = 'Java';


-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NULL;


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- SELECT nombre, edad FROM usuarios_lenguajes WHERE edad = (SELECT MIN(edad) FROM usuarios_lenguajes);


-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad DESC;


-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- SELECT COUNT(edad) FROM usuarios_lenguajes WHERE edad > 28;


-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%';


-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- SELECT lenguaje FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY COUNT(*) DESC LIMIT 1;


-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- SELECT * FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript';


-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'Python';


-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- SELECT nombre, lenguaje FROM usuarios_lenguajes ORDER BY nombre;


-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example%';


-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- SELECT * FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35 AND lenguaje IS NOT NULL;


-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad < 30 AND lenguaje = 'CSS';


-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- SELECT nombre, COUNT(lenguaje) FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL GROUP BY nombre, apellido;


-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- SELECT lenguaje FROM usuarios_lenguajes ORDER BY LENGTH(lenguaje) DESC LIMIT 1;


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- SELECT CONCAT(nombre, ' ', apellido) FROM usuarios_lenguajes;


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- SELECT COUNT(DISTINCT lenguaje) FROM usuarios_lenguajes WHERE edad > 25;


-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- SELECT nombre, edad FROM usuarios_lenguajes WHERE edad IN (SELECT edad FROM usuarios_lenguajes GROUP BY edad HAVING COUNT(*) > 1);


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- SELECT nombre, lenguaje, edad FROM usuarios_lenguajes WHERE edad < 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- SELECT nombre, email, COUNT(lenguaje) FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL GROUP BY nombre, email;


-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- SELECT COUNT(apellido) FROM usuarios_lenguajes WHERE apellido LIKE 'G%';


-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- SELECT nombre, lenguaje FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' ORDER BY LENGTH(lenguaje) LIMIT 1;


-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- SELECT nombre, edad, lenguaje FROM usuarios_lenguajes WHERE edad > 30 ORDER BY LENGTH(lenguaje) LIMIT 1;


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- SELECT nombre, lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY lenguaje;


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- SELECT * FROM usuarios_lenguajes WHERE edad BETWEEN 20 AND 25 AND lenguaje IS NOT NULL;


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- SELECT nombre, lenguaje FROM usuarios_lenguajes WHERE NOT lenguaje = 'SQL';


-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- SELECT nombre, lenguaje, edad FROM usuarios_lenguajes WHERE edad > 29 AND length(lenguaje) LIMIT 1;


-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí // No se :(


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- SELECT COUNT(lenguaje) FROM usuarios_lenguajes WHERE lenguaje = 'Script';


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- SELECT nombre, LENGTH(nombre) FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- SELECT nombre, lenguaje FROM usuarios_lenguajes WHERE id_usuario = (SELECT id_usuario FROM usuarios_lenguajes ORDER BY id_usuario DESC LIMIT 1);


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- SELECT SUM(edad) FROM usuarios_lenguajes;


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- SELECT COUNT(lenguaje) FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%' AND edad < 28;

