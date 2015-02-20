class Player

	attr_accessor :rps_holder

	def add(rps)
		@rps_holder = rps
	end

	def has_rps_object?
		!@rps_holder.nil?
	end

	def choose_paper
		@rps_holder.change_to_paper
	end

	def choose_scissors
		@rps_holder.change_to_scissors
	end

	def choose_rock
		@rps_holder.change_to_scissors
	end

end