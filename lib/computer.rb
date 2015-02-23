class Computer

	attr_accessor :answer

	def pick
		@answer = %w(scissor paper rock).shuffle.first
	end

end