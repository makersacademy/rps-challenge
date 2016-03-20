class Computer

	def self.move
		random_number = Kernel.rand(3)
		["Rock", "Paper", "Scissors"][random_number]
	end
end