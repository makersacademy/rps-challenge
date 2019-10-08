require_relative 'player'

class Game

  attr_reader :player_1, :player_2

# Keys represent the weapon and the values are the objects the weapon can defeat.
  LOGIC = [
    { "Paper" => "Rock"},
    { "Rock" => "Scissors"},
    { "Scissors" => "Paper"},
  ]


  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def self.outcome
    return "WINNER" if winner?
    return "DRAW" if draw?
    return "LOSE" if lost?
  end

  private

  def self.result
    { @game.player_1.choice => @game.player_2.choice }
  end

  def self.winner?
    LOGIC.include?(self.result)
  end

  def self.draw?
    @game.player_1.choice == @game.player_2.choice
  end

  def self.lost?
    LOGIC.include?( { @game.player_2.choice => @game.player_1.choice } )
  end

end
