CREATE DATABASE reservas;
USE reservas;


-- Tabla para almacenar información sobre los clientes.

CREATE TABLE clientes
(
    id INT
    AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR
    (50) NOT NULL,
  apellido VARCHAR
    (50) NOT NULL,
  correo VARCHAR
    (50) NOT NULL,
  telefono VARCHAR
    (20) NOT NULL
);


    -- Tabla para almacenar información sobre las reservas.

    CREATE TABLE reservas
    (
        id INT
        AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT NOT NULL,
  fecha_llegada DATE NOT NULL,
  fecha_salida DATE NOT NULL,
  habitacion VARCHAR
        (20) NOT NULL,
  FOREIGN KEY
        (id_cliente) REFERENCES clientes
        (id)
);

