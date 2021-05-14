class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def select_random
    ['rock', 'paper', 'scissors'][rand(3)]
  end

  def choose(option)
    game_option = select_random
    if game_option == option
      'draw'
    elsif game_option == 'rock' && option == 'paper'
      'win'
    elsif game_option == 'scissors' && option == 'rock'
      'win'
    elsif game_option == 'paper' && option == 'scissors'
      'win'
    else 
      'lose'
    end
  end
end