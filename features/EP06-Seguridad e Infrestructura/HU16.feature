Feature: Copias de seguridad automáticas

  Como administrador del sistema
  Quiero que se realicen copias de seguridad automáticas
  Para garantizar la recuperación de la información ante incidentes.

  Scenario: Respaldo automático exitoso
    Given el usuario presenta datos en la plataforma
    When llega la fecha programada para la copia de seguridad
    Then el sistema genera automáticamente un respaldo
    And almacena la copia en un repositorio seguro.

  Scenario: Restauración de información
    Given que existe una copia de seguridad disponible
    When el administrador solicita restaurar la información del respaldo
    Then el sistema recupera correctamente los datos respaldados
    And mantiene la seguridad de la información.

  Scenario: Error durante la creación del respaldo
    Given que el sistema intenta realizar la copia de seguridad
    When ocurre una falla en el almacenamiento del respaldo
    Then el sistema registra el error en el historial
    And notifica al administrador sobre la falla ocurrida.
