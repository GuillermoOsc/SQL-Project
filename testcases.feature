Feature: Insertar registros en la tabla de clientes

    Scenario: Insertar un nuevo cliente
        Given que se ha creado la tabla de clientes
        When se inserta un nuevo registro con los campos nombre, email y teléfono
        Then se espera que el registro sea agregado correctamente a la tabla
        And se espera que se genere un nuevo id automáticamente


Feature: Actualizar registros en la tabla de clientes

    Scenario: Actualizar un cliente existente
        Given que existe un registro en la tabla de clientes con el id 1
        When se actualiza el registro con el id 1 cambiando el campo email
        Then se espera que el registro sea actualizado correctamente en la tabla
        And se espera que el campo email tenga el nuevo valor especificado


Feature: Eliminar registros en la tabla de clientes

    Scenario: Eliminar un cliente existente
        Given que existe un registro en la tabla de clientes con el id 1
        When se elimina el registro con el id 1
        Then se espera que el registro sea eliminado correctamente de la tabla
        And se espera que no exista ningún registro con el id 1 en la tabla


Feature: Insertar registros en la tabla de habitaciones

    Scenario: Insertar una nueva habitación
        Given que se ha creado la tabla de habitaciones
        When se inserta un nuevo registro con los campos número, tipo y precio
        Then se espera que el registro sea agregado correctamente a la tabla
        And se espera que se genere un nuevo id automáticamente


Feature: Actualizar registros en la tabla de habitaciones

    Scenario: Actualizar una habitación existente
        Given que existe un registro en la tabla de habitaciones con el id 1
        When se actualiza el registro con el id 1 cambiando el campo precio
        Then se espera que el registro sea actualizado correctamente en la tabla
        And se espera que el campo precio tenga el nuevo valor especificado


Feature: Eliminar registros en la tabla de habitaciones

    Scenario: Eliminar una habitación existente
        Given que existe un registro en la tabla de habitaciones con el id 1
        When se elimina el registro con el id 1
        Then se espera que el registro sea eliminado correctamente de la tabla
        And se espera que no exista ningún registro con el id 1 en la tabla
