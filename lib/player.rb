class Player
  attr_reader :name, :game_option

  def initialize(name)
    @name = name
    @game_option = ''
  end

  def select_random
    ['Rock', 'Paper', 'Scissors'][rand(3)]
  end

  def choose(option)
    @game_option = select_random
    if game_option == option
      'draw'
    elsif game_option == 'Rock' && option == 'Paper'
      'win'
    elsif game_option == 'Scissors' && option == 'Rock'
      'win'
    elsif game_option == 'Paper' && option == 'Scissors'
      'win'
    else 
      'lose'
    end
  end
end