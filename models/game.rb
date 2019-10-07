class Game

  attr_reader :player_1, :player_2
  
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def game_over(player_1, player_2)
    return "#{@player_1.name} wins" if player_1 == 'Scissors' && player_2 == 'Paper'
    return "#{@player_1.name} wins" if player_1 == 'Paper' && player_2 == 'Rock'
    return "#{@player_1.name} wins" if player_1 == 'Rock' && player_2 == 'Scissors'
    return "It's a draw" if player_1 == player_2
    "#{@player_2.name} wins"
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end

end
