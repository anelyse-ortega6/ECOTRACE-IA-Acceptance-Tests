Feature: Protección de datos mediante encriptación

  Como usuario de la plataforma
  Quiero que toda mi información esté protegida
  Para garantizar la confidencialidad de los datos empresariales.
  
  Scenario: Almacenamiento seguro de la información
    Given que el usuario utiliza la plataforma EcoTrace IA
    When el usuario registra información sensible
    Then el sistema almacena los datos utilizando mecanismos de cifrados y encriptación
    And protege la información frente a accesos no autorizados.

  Scenario: Transmisión segura de información
    Given que el usuario envía información al servidor
    When el sistema transmite los datos
    Then la comunicación se realiza mediante una conexión segura
    And la información permanece protegida durante la transmisión.

  Scenario: Acceso no autorizado
    Given que un usuario intenta acceder a información restringida
    When el sistema detecta que no posee permisos suficientes o presenta fallas en el acceso
    Then bloquea el acceso a la información y a los registros
    And registra el intento de acceso para fines de auditoría.
