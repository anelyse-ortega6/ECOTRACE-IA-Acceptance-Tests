Feature: Cálculo automático de la huella de carbono

  Como administrador de una Mype
  Quiero calcular automáticamente la huella de carbono
  Para conocer el impacto ambiental de mi empresa.

  Scenario: Cálculo exitoso de emisiones
    Given que el usuario ha validado toda la información registrada
    And existen consumos suficientes para el cálculo
    When el sistema procesa los datos con esta información
      | Tipo Consumo | Cantidad   |
      | Electricidad | 500 kWh    |
      | Combustible  | 120 litros |
      
    Then calcula automáticamente la huella de carbono
    And muestra el resultado junto con los indicadores ambientales.

  Scenario: No existen datos suficientes para realizar el cálculo
    Given que la empresa aún no ha registrado consumos
    When el usuario solicita calcular la huella de carbono
    Then el sistema informa que no existen datos suficientes
    And no permite continuar
    And solicita registrar información adicional.
