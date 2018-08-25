class Game

  attr_reader :name, :to_win

  def initialize(name)
    @name = name
    @to_win = {
      'rock' => 'scissors',
      'paper' => 'rock',
      'scissors' => 'paper'
    }
  end

  def computer_weapon
    ['rock', 'paper', 'scissors'].sample
  end

end
