Feature: Validación y corrección de datos extraídos por OCR

  Como usuario de la plataforma
  Quiero revisar y corregir los datos obtenidos por OCR
  Para asegurar que la información almacenada sea correcta.

  Scenario: Corrección exitosa de la información

    Given que el sistema ha extraído correctamente los datos de una factura
    When el usuario modifica un dato incorrecto y guarda los cambios
    Then el sistema actualiza la información registrada
    And almacena la versión corregida.

  Scenario: El usuario confirma la información sin realizar cambios

    Given que el sistema muestra los datos extraídos
    When el usuario confirma que toda la información es correcta
    Then el sistema guarda automáticamente los datos de forma directa.

  Scenario: Existen campos obligatorios vacíos

    Given que algunos datos importantes no fueron reconocidos por el OCR
    When el usuario intenta guardar la información sin completarlos
    Then el sistema muestra un mensaje indicando los campos obligatorios faltantes
    And no permite finalizar el registro
    And pide rellenar los campos.
