class Computer

CHOICES = ["rock","paper","scissors"]

def initialize
	@choice= nil
end 

def play
	@choice = random
end

  private 

def random
	CHOICES.sample
end

end