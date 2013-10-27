require 'product'

Before do
	@item = Product.new
end

Given(/^I have created a promotion with a price (\d+)$/) do |arg1|
  @item.original_price = arg1
end

When(/^I apply a discount of (\d+)%$/) do |arg1|
  @item.validate_discount(arg1.to_f / 100)
end

Then(/^the price should be set to (\d+)$/) do |arg1|
  @item.current_price == arg1
end

When(/^I advance the clock by (\d+) days$/) do |arg1|
  @item.advance_clock(arg1.to_i)
end