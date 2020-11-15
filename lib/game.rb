class Game

  attr_reader :players, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def winner(player_1, player_2)
    return player_2 if player_1.hand == "Rock" and player_2.hand == "Paper"
    return player_1 if player_1.hand == "Rock" and player_2.hand == "Scissors"
    return player_2 if player_1.hand == "Scissors" and player_2.hand == "Rock"
    return player_1 if player_1.hand == "Scissors" and player_2.hand == "Paper"
    return player_1 if player_1.hand == "Paper" and player_2.hand == "Rock"
    return player_2 if player_1.hand == "Paper" and player_2.hand == "Scissors"
    return "Draw" if player_1.hand == player_2.hand
  end
end
