class Cpu
  attr_reader :last_move
  
	def cpu_move			
    choice = rand(0..2)
    rps = [:rock,:paper,:scissors]
    rps[choice]
    @last_move = rps[choice]
	end
end
