class Game

  attr_reader :player, :choice
  def initialize(player, choice)
    @choice = choice
    @player = player
  end

  def choice
    @choice.upcase
  end

  def computer_choice
    ['rock', 'paper', 'scissors'].sample.upcase
  end

  def won?
    true
  end


end