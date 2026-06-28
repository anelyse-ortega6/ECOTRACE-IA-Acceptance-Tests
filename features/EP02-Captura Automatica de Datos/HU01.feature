Feature: Escaneo y registro automático de facturas mediante OCR

  Como administrador de una Mype
  Quiero registrar información de una factura de forma automática
  Para almacenar los datos al sistema sobre la información del consumo
  
  Scenario: Registro exitoso de una factura
    Given que el usuario ha iniciado sesión en la plataforma
    And se encuentra en la pantalla de escaneo
    When captura una fotografía de una factura válida
    Then el sistema extrae automáticamente los datos principales
    And muestra la información para su validación
    And registra la factura en la base de datos después de la confirmación del usuario
    
  Scenario: La factura presenta una imagen de baja calidad
    Given el usuario intenta escanear la factura
    When la imagén se ve de poca calidad
    Then el sistema indicara que vuelva a tomar la fotografia
    And solicita volver a capturar la imagen.

  Scenario: Se intenta escanear un documento que no es una factura
    Given el usuario escanea el documento
    When el OCR identifica que el documento no es una factura
    Then el sistema indica que el documento no es valido
    And no registra los datos de la imagen.
    
