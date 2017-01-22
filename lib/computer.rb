class Computer

CHOICES = ["rock","paper","scissors"]

attr_reader :name
def initialize
	@name="Computer"
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