Feature: Limited-Time Sales
In order to avoid misuse of promotions
As a retailer
I want to a promotion to last no longer than 30 days

	Scenario:  A sale can run for less than 30 days
	Given I have created a product with a price 100
	And I apply a discount of 25%
	When I advance the clock by 15 days
	Then the price should be set to 75

	Scenario:  A sale can run for no more than 30 days
	Given I have created a product with a price 100
	And I apply a discount of 25%
	When I advance the clock by 45 days
	Then the price should be set to 100