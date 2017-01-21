class Computer

def initialise
	@choice= nil
end 

def play
	@choice = random
end

  private 

def random
	["rock","paper","scissors"].sample
end

end