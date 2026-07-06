Feature: Generación de planes de acción con Inteligencia Artificial

  Como administrador de una Mype
  Quiero recibir recomendaciones personalizadas
  Para reducir costos operativos y emisiones de carbono.

  Scenario: Generación exitosa del plan de acción
    Given que el sistema ya calculó la huella de carbono
    When la inteligencia artificial analiza los siguientes resultados
      | Indicador         | Valor   |
      | Huella CO2        | 3.5 Ton |
      | Consumo eléctrico | 520 kWh |
    
    Then genera un plan de acción personalizado a la situacion
    And muestra recomendaciones para disminuir el impacto ambiental de la empresa.

  Scenario: Actualización del plan de acción
    Given que el usuario registró nuevos consumos 
      | Tipo         | Valor   |
      | Electricidad | 400 kWh |
      
    And el sistema recalculó la huella
    When la inteligencia artificial vuelve a analizar la información
    Then genera un nuevo plan de acción actualizado
    And reemplaza las recomendaciones anteriores en el almacenamiento.

  Scenario: No existen datos suficientes para generar el informe
    Given que la empresa no posee información suficiente para el análisis
    When la inteligencia artificial intenta generar un plan de acción
    Then se detiene el proceso
    And el sistema informa que no puede elaborar recomendaciones
    And solicita completar la información necesaria.
