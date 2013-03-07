Feature: Invoke Service
  In order to test wash_out
  As a developer
  I would like to test wash_out with Savon in cucumber
  
  Scenario: Invoke soap
    Given I have a wsdl location
    And I have created a Savon client
    Then I should have 1 operation
  