Feature: Checkout
  Scenario Outline: Checkout bananas
    Given the price of a "banana" is 50c
    When I checkout <count> "banana"
    Then the total price should be <total>c

    Examples:
        | count | total | 
        | 1     | 50    | 
        | 2     | 100    | 

  Scenario: Two bananas scanned separtely
    Given the price of a "banana" is 50c
    When I checkout 1 "banana"
    And I checkout 1 "banana"
    Then the total price should be 100c

  Scenario: A banana and an apple
    Given the price of a "banana" is 50c 
    And the price of a "apple" is 30c 
    When I checkout 1 "banana"
    And I checkout 1 "apple"
    Then the total price should be 80c
