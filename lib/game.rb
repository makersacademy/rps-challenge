class Game
  DRAW = 0
  WIN = 1

  attr_reader :players, :current_player

  def initialize(players, ai = AIPlayer, vm = VictoryMatrix)
    @ai_class = ai
    @victory_matrix = vm.new
    @players = players
    if @players[1].name == ''
      @players[1] = @ai_class.new
    end
    @current_player = @players[0]
  end

  def result
    player_1_choice = @victory_matrix.choice_to_index(@players[0].choice)
    player_2_choice = @victory_matrix.choice_to_index(@players[1].choice)
    @players[@victory_matrix.result(player_1_choice, player_2_choice)]
    # if @players[0].choice == @players[1].choice
    #   # nil return type because there is no winner
    #   return [DRAW, nil]
    # end
    #
    # if (@players[0].choice == 'rock' && @players[1].choice == 'scissors') ||
    #   (@players[0].choice == 'paper' && @players[1].choice == 'rock') ||
    #   (@players[0].choice == 'scissors' && @players[1].choice == 'paper')
    #   return[WIN, @players[0]]
    # end
    #
    # return [WIN, @players[1]]
  end

  def single_player?
    return true if @players[1].class == @ai_class.new.class
    return false
  end

  def switch_turns
    @current_player = @current_player == @players[0] ? @players[1] : @players[0]
  end
end
