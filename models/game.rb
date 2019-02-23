class Game
  attr_reader :player_name, :result

  PLAYER_WINS_SCENARIOS = {
    rock: 'scissors',
    paper: 'rock',
    scissors: 'paper'
  }

  def self.current_game
    @current_game
  end

  def self.create(player_name:, computer:, result_class:)
    @current_game = Game.new(player_name: player_name, computer: computer, result_class: result_class)
  end

  def initialize(player_name:, computer:, result_class:)
    @player_name = player_name 
    @computer = computer
    @result_class = result_class
  end

  def play(move)
    @computer_move = @computer.move
    @player_move = move

    if player_win? then @result = @result_class.new(:player_win)

    elsif draw? then @result = @result_class.new(:player_draw)
      
    else @result = @result_class.new(:player_loss)
    end
  end

  def result_message
    @result.message
  end

  def player_win?
    PLAYER_WINS_SCENARIOS[@player_move.to_sym] == @computer_move
  end

  def draw?
    @player_move == @computer_move
  end
end
