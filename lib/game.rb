class Game
  RULES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }
  attr_reader :players

  def initialize(player, opponent)
    @players = [player, opponent]
  end

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def declare_winner
    return @players[0].name if player_wins?
    return @players[1].name if opponent_wins?
    return :draw
  end

  private

  def player_wins?
    RULES[@players[0].choice] == @players[1].choice
  end

  def opponent_wins?
    RULES[@players[1].choice] == @players[0].choice
  end
end
