class Game
  attr_reader :players
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def winner_is 
    return "TIE" if player_1.throw.choice == player_2.throw.choice

    case [player_1.throw.choice, player_2.throw.choice]
    when ["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]
      return player_1 
    else
      return player_2
    end
  end
end
