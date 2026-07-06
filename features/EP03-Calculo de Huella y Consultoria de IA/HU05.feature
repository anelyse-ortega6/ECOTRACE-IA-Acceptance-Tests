Feature: Visualización del dashboard de indicadores ambientales

  Como usuario de la plataforma
  Quiero visualizar indicadores y gráficos ambientales
  Para monitorear el desempeño ambiental de mi empresa.

  Scenario: Visualización exitosa del dashboard 
    Given que el usuario ha iniciado sesión en la plataforma
    And existen registros de consumos ambientales asociados a su empresa 
    When el usuario accede a los siguientes indicadores
      | Indicador    | Valor   |
      | Huella CO2   | 3.5 Ton |
      | Electricidad | 520 kWh |
      
    Then el sistema muestra gráficos de consumo y emisiones de carbono
    And presenta indicadores actualizados del período seleccionado.

  Scenario: Consulta de un período específico
    Given se muestra los indicadores generales
    When el usuario selecciona el siguiente periodo
          | Inicio     | Fin        |
          | 01/07/2026 | 31/07/2026 |

    Then el sistema actualiza los gráficos e indicadores correspondientes
    And muestra únicamente la información del período seleccionado.

  Scenario: No existen datos para visualizar
    Given que la empresa no posee suficientes registros ambientales
    When el usuario accede al Dashboard
    Then el sistema informa que no existen datos disponibles
    And sugiere registrar información para generar indicadores.
