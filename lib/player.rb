class Player
  
  attr_reader :choice

  def initialize
  	@choice = 'No choice has been made yet!'
  end

  def player_choice(choice)
  	if choice == 'rock'
  	  @choice = 'rock'
  	elsif choice == 'paper'
  	  @choice = 'paper'
  	elsif choice == 'scissors'
  	  @choice = 'scissors'
  	else
  	  fail "You can\'t use that in a rock, paper, scissors game!"
  	end
  end
end