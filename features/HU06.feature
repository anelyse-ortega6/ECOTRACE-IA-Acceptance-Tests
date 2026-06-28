Feature: Registro de información en modo Offline

  Como usuario móvil
  Quiero registrar información sin conexión a Internet
  Para continuar trabajando desde cualquier lugar.

  Scenario: Registro exitoso sin conexión
    Given el usuario abre la aplicacion 
    When el usuario registra una nueva factura sin conexion a internet
    Then el sistema almacena la información localmente
    And la marca como pendiente de sincronización.

  Scenario: Sincronización automática
    Given que existen registros pendientes de sincronización
    And el dispositivo recupera la conexión a Internet
    When la aplicación detecta la conexión disponible
    Then sincroniza automáticamente la información con el servidor
    And actualiza el estado de los registros.

  Scenario: Error durante la sincronización
    Given que existen registros pendientes
    When ocurre un error durante la sincronización
    Then el sistema mantiene la información almacenada localmente
    And notifica al usuario que deberá intentarlo nuevamente.
