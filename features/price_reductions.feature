Feature: Price Reductions
In order to encourage sales
As a retailer
I want to be able to discount by between 5% and 30% 
  
	Scenario:  Discount a product by 10%
	Given I have created a product with a price 100
	When I apply a discount of 10%
	Then the price should be set to 90

	Scenario:  Unsuccessfully attempt to discount a product by 1%
	Given I have created a product with a price 100
	When I apply a discount of 1%
	Then the price should be set to 100

	Scenario:  Unsuccessfully attempt to discount a product by 50%
	Given I have created a product with a price 100
	When I apply a discount of 50%
	Then the price should be set to 100

    
  