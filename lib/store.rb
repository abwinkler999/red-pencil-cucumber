class Store
	attr_accessor :day

	def initialize
		@day = 0
	end

	def advance_clock(days)
		@day += days
		if @day > 30
			@discount = 0
		end
	end
end