class Game
  RULES = {
    scissors: [:paper],
    paper: [:rock],
    rock: [:paper]
  }

  attr_reader :game_type, :number_of_players
  attr_accessor :result, :player1, :player2

  def initialize(number_of_players, game_type)
    @number_of_players = number_of_players
    @game_type = game_type

    @result = nil
    @player1 = nil
    @player2 = nil
  end

  def self.create(number_of_players, game_type)
    @game = Game.new(number_of_players, game_type)
  end

  def self.instance
    @game
  end

  def two_player?
    return true if @number_of_players == '2'
  end

  def winner?
    if RULES[@player1.action].include?(@player2.action)
      @player1
    else
      @player2
    end
  end

  def tie?
    return true if @player1.action == @player2.action
  end

  def return_result
    tie?.nil? ? winner? : true
  end
end
