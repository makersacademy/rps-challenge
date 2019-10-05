require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    # @players = [player_1, player_2]
    @player_1 = player_1
    @player_2 = player_2
    @logic = [
      { "Paper" => "Rock"},
      { "Rock" => "Scissors"},
      { "Scissors" => "Paper"},
    ]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  # def first_player
  #   @players.first
  # end
  #
  # def second_player
  #   @players.last
  # end

  def winner
    return 'WINNER' if winner?
  end

  private

  def result
    { @game.player_1.choice => @game.player_2.choice }
  end

  def winner?
    @logic.include?(result)
  end

  def draw?
    @game.player_1.choice == @game.player_2.choice
  end

end
