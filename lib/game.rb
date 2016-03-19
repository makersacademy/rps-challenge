class Game

  def self.start(player1)
    @game = Game.new(player1)
  end

  def self.current_game
    @game
  end

  WEAPONS = [:Rock, :Paper, :Scissors]
  WINNERS = { Rock: :Scissors, Paper: :Rock, Scissors: :Paper }

  attr_reader :player1

  def initialize(player1, player2 = Computer.new, player_class = Player)
    @player1 = player_class.new(player1)
    @player2 = player2
  end

  def result
    return :draw if @player1.weapon == @player2.weapon
    return :win if WINNERS[@player1.weapon] == @player2.weapon
    :loss
  end

end
