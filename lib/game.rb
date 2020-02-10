require_relative 'player'

class Game
  GAME_RULES = {
    Scissors: {Scissors: :draw, Paper: :win, Rock: :lose, Lizard: :win, Spock: :lose},
    Paper: {Scissors: :lose, Paper: :draw, Rock: :win, Lizard: :lose, Spock: :lose},
    Rock: {Scissors: :win, Paper: :lose, Rock: :draw, Lizard: :win, Spock: :lose},
    Lizard: {Scissors: :lose, Paper: :win, Rock: :lose, Lizard: :draw, Spock: :win},
    Spock: {Scissors: :win, Paper: :lose, Rock: :win, Lizard: :lose, Spock: :draw}
  }
  
  attr_reader :player_1, :player_2, :score_1, :score_2

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @score_1 = 0
    @score_2 = 0
  end

  def outcome
    if @result == :win
      "#{player_1.name} wins!"
    elsif @result == :lose
      "#{player_2.name} wins!"
    elsif @result == :draw
      "It's a draw!"
    end
  end

  def score_change
    if @result == :win
      @score_1 += 1
    elsif @result == :lose
      @score_2 += 1
    end
  end

  def result
     @result = GAME_RULES[player_1.choice][player_2.choice]
  end
end
