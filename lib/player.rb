class Player
  attr_reader :name, :choice, :opponent_choice

  def initialize(name)
    @name = name
    @choice = nil
    @opponent_choice = nil
  end

  def choose(option)
    @choice = option
  end

  def random_choice
    @opponent_choice = ['rock','paper','scissors'].sample
  end 
end