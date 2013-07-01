Feature: Price Reductions
  In order to encourage sales
  As a retailer
  I want to be able to discount products
  
  Scenario:  Discount a product by 10%
    Given I have created a product with a price 100
    When I apply a discount of 10%
    Then the price should be set to 90%
    
    