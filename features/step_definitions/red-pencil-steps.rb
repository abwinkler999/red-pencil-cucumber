require 'red_pencil'

Before do
	@item = Product.new
end

Given(/^I have created a product with a price (\d+)$/) do |arg1|
  @item.original_price = arg1
end

When(/^I apply a discount of (\d+)%$/) do |arg1|
  @item.validate_discount(0.1)
end

Then(/^the price should be set to (\d+)%$/) do |arg1|
  @item.current_price == arg1
end