class Computer

	attr_accessor :answer

	def pick
		@answer = %w(scissors paper rock).shuffle.first
	end

end