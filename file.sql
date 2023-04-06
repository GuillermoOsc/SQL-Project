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


        -- Se insertan datos de prueba para verificar y validar la funcionalidad de la base de datos.

        INSERT INTO clientes
            (nombre, apellido, correo, telefono)
        VALUES
            ('Juan', 'Pérez', 'juan.perez@gmail.com', '555-1234');

        INSERT INTO reservas
            (id_cliente, fecha_llegada, fecha_salida, habitacion)
        VALUES
            (1, '2023-04-10', '2023-04-15', '101');



        -- Tabla de empleados. 

        CREATE TABLE empleados
        (
            id INT
            AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR
            (50) NOT NULL,
  posicion VARCHAR
            (50) NOT NULL,
  salario DECIMAL
            (10,2) NOT NULL,
  fecha_contratacion DATE NOT NULL,
  disponible BOOLEAN NOT NULL DEFAULT true
);


            -- Tabla de facturas. 

            CREATE TABLE facturas
            (
                id INT
                AUTO_INCREMENT PRIMARY KEY,
  id_reserva INT NOT NULL,
  id_servicio INT,
  fecha_factura DATE NOT NULL,
  importe DECIMAL
                (10,2) NOT NULL,
  CONSTRAINT fk_reserva FOREIGN KEY
                (id_reserva) REFERENCES reservas
                (id),
  CONSTRAINT fk_servicio FOREIGN KEY
                (id_servicio) REFERENCES servicios
                (id)
);


                -- Tabla de habitaciones. 

                CREATE TABLE habitaciones
                (
                    id INT
                    AUTO_INCREMENT PRIMARY KEY,
  tipo VARCHAR
                    (50) NOT NULL,
  precio_noche DECIMAL
                    (10,2) NOT NULL,
  disponible BOOLEAN NOT NULL DEFAULT true
);


                    -- Tabla de servicios. 

                    CREATE TABLE servicios
                    (
                        id INT
                        AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR
                        (50) NOT NULL,
  precio DECIMAL
                        (10,2) NOT NULL
);
