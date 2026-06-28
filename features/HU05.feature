Feature: Visualización del dashboard de indicadores ambientales

  Como usuario de la plataforma
  Quiero visualizar indicadores y gráficos ambientales
  Para monitorear el desempeño ambiental de mi empresa.

  Scenario: Visualización exitosa del dashboard 
    Given que el usuario ha iniciado sesión en la plataforma
    And existen registros de consumos ambientales asociados a su empresa 
    When el usuario accede al módulo Dashboard
    Then el sistema muestra gráficos de consumo y emisiones de carbono
    And presenta indicadores actualizados del período seleccionado.

  Scenario: Consulta de un período específico
    Given se muestra los indicadores generales
    When el usuario selecciona un rango de fechas determinado
    Then el sistema actualiza los gráficos e indicadores correspondientes
    And muestra únicamente la información del período seleccionado.

  Scenario: No existen datos para visualizar
    Given que la empresa no posee suficientes registros ambientales
    When el usuario accede al Dashboard
    Then el sistema informa que no existen datos disponibles
    And sugiere registrar información para generar indicadores.
