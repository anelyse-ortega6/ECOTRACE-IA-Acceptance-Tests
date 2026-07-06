Feature: Validación y corrección de datos extraídos por OCR

  Como usuario de la plataforma
  Quiero revisar y corregir los datos obtenidos por OCR
  Para asegurar que la información almacenada sea correcta.

  Scenario: Corrección exitosa de la información
    Given que el sistema ha extraído correctamente los datos de una factura 
    con esta información
      | Campo      | Valor       |
      | Empresa    | PetroPerú   |
      | Consumo    | 100 litros  |

    When el usuario modifica los datos de esta manera
      | Campo      | Nuevo Valor |
      | Consumo    | 120 litros  |
      
    Then el sistema actualiza la información registrada
    And almacena la versión corregida.

  Scenario: El usuario confirma la información sin realizar cambios
    Given que el sistema muestra los datos extraídos de esta manera
      | Campo      | Valor       |
      | Empresa    | PetroPerú   |
      | Consumo    | 120 litros  |
    When el usuario confirma que toda la información es correcta
    Then el sistema guarda automáticamente los datos de forma directa.

  Scenario: Existen campos obligatorios vacíos
    Given que algunos datos importantes no fueron reconocidos por el OCR
    When el usuario intenta guardar la información de esta manera
      | Campo      | Valor      |
      | Empresa    |            |
      | Consumo    | 120 litros |
      
    Then el sistema muestra un mensaje indicando los campos obligatorios faltantes
    And no permite finalizar el registro
    And pide rellenar los campos.
