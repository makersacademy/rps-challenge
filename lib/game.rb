class Game
  DRAW = 0
  WIN = 1

  attr_reader :players

  def initialize(players, ai = AIPlayer)
    @ai_class = ai
    @players = players
    if @players[1].name == ''
      @players[1] = @ai_class.new
    end
  end

  def result
    if @players[0].choice == @players[1].choice
      # nil return type because there is no winner
      return [DRAW, nil]
    end

    if (@players[0].choice == 'rock' && @players[1].choice == 'scissors') ||
      (@players[0].choice == 'paper' && @players[1].choice == 'rock') ||
      (@players[0].choice == 'scissors' && @players[1].choice == 'paper')
      return[WIN, @players[0]]
    end

    return [WIN, @players[1]]
  end

  def single_player?
    return true if @players[1].class == @ai_class.new.class
    return false
  end
end
