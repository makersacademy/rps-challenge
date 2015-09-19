class Cpu
  attr_reader :last_move
	def cpu_move			
    choice = rand(0..2)
    rps = [:r,:p,:s]
    rps[choice]
    @last_move = rps[choice]
	end
end
