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
    # If choices are the same it's a draw
    # If player's choice(key) has value opponents choice
    # => player wins
    # otherwise opponent wins
    puts @players[0].choice
    puts @players[1].choice
    return @players[0].name if RULES[@players[0].choice] == @players[1].choice
    return @players[1].name if RULES[@players[1].choice] == @players[0].choice
    return :draw

  end

end
