class Game
  attr_reader :player, :game_choice, :result
  
  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
    @game_choice = ''
    @result = ''
  end

  def select_random
    ['Rock', 'Paper', 'Scissors'][rand(3)]
  end

  def declare_winner(user_choice)
    @game_choice = select_random
    if game_choice == user_choice
      @result = 'draw'
    elsif game_choice == 'Rock' && user_choice == 'Paper'
      @result = 'win'
    elsif game_choice == 'Scissors' && user_choice == 'Rock'
      @result = 'win'
    elsif game_choice == 'Paper' && user_choice == 'Scissors'
      @result = 'win'
    else 
      @result = 'lose'
    end
  end
end