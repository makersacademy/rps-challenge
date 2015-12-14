class Player

  attr_reader :choice

  def initialize(player_one_choice)
    @choice = player_one_choice
    @options = ['rock', 'paper', 'scissors']
  end


end
