Feature: Adding the employees in HRMS Application

  Background:
    When user enters valid admin credentials
    And user clicks on login button
    Then admin user is successfully logged in
    When user clicks on PIM option
    And user clicks on add employee option

  @regression
  Scenario: Adding one employee from feature file
  #  Given user is navigated to HRMS application
    And user enters firstname middlename and lastname
    And user clicks on save button
    Then employee added successfully

  @123
  Scenario: Adding one employee using cucumber feature file
    And user enters "zuhoor" "Mujeeb" and "silvia"
    And user clicks on save button
    Then employee added successfully

  @123
  Scenario Outline: Adding multiple employees
    And user provides "<firstName>" "<middleName>" and "<lastName>"
    And user clicks on save button
    Then employee added successfully
    Examples:
      |firstName|middleName|lastName|
      |Asel     |MS        |Tolga   |
      |Yazgul   |MS        |Kishan  |
      |Tarik    |MS        |Mujeeb  |
      |Nassir   |MS        |Volkan  |

  @test @datatable
  Scenario: Add employee using data table
    When user provides multiple employee data and verify they are added
      |firstName|middleName|lastName|
      |Asel     |MS        |Tolga   |
      |Yazgul   |MS        |Kishan  |
      |Tarik    |MS        |Mujeeb  |
@exel
Scenario: Adding the employees from exel file
  When user add multiple employees from exel file using "EmployeeData" sheet and verify the user added
