class Game
  attr_reader :player_name, :game_choice
  
  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end
  
  def initialize(player_name)
    @player_name = player_name
    @game_choice = ''
  end

  def select_random
    ['Rock', 'Paper', 'Scissors'][rand(3)]
  end

  def declare_winner(user_choice)
    @game_choice = select_random
    if game_choice == user_choice
      'draw'
    elsif game_choice == 'Rock' && user_choice == 'Paper'
      'win'
    elsif game_choice == 'Scissors' && user_choice == 'Rock'
      'win'
    elsif game_choice == 'Paper' && user_choice == 'Scissors'
      'win'
    else 
      'lose'
    end
  end
end