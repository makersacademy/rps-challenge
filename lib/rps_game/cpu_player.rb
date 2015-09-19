class Cpu
	def next_move			
    choice = rand(0..2)
    rps = [:r,:p,:s]
    rps[choice]
	end
end
