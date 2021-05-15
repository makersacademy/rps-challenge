class Player
  attr_reader :name, :player_choice, :opponent_choice

  def initialize(name)
    @name = name
    @player_choice = nil
    @opponent_choice = nil
  end

  def choose(option)
    @player_choice = option
  end

  def random_choice
    @opponent_choice = ['rock','paper','scissors'].sample
  end 
end