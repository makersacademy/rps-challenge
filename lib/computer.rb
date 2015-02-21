class Computer

attr_accessor :rps

	def pick_rps
		@rps = [:rock, :paper, :scissors].sample
	end


end