class Game
  DRAW = 0
  WIN = 1

  attr_reader :players

  def initialize(players, ai = AIPlayer, vm = VictoryMatrix)
    @ai_class = ai
    @victory_matrix = vm.new
    @players = players
    if @players[1].name == ''
      @players[1] = @ai_class.new
    end
  end

  def result
    player_1_choice = @victory_matrix.choice_to_index(@players[0].choice)
    player_2_choice = @victory_matrix.choice_to_index(@players[1].choice)
    @players[@victory_matrix.result(player_1_choice, player_2_choice)]
  end

  def single_player?
    return true if @players[1].class == @ai_class.new.class
    return false
  end

  def self.new_game(players)
    @game = Game.new(players)
  end

  def self.current_game
    @game
  end
end
