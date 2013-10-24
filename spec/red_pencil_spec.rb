require 'red_pencil'


describe Product do 
	it "can discount an object by 10%" do
		item = Product.new
		item.original_price = 100
		item.validate_discount(0.1)
		item.current_price.should == 90
	end

	it "can't discount an object by 1%" do
		item = Product.new
		item.original_price = 100
		item.validate_discount(0.01)
		item.current_price.should == 100
	end

end

