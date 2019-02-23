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

  def self.create(player_name:, computer:)
    @current_game = Game.new(player_name: player_name, computer: computer)
  end

  def initialize(player_name:, computer:)
    @player_name = player_name 
    @computer = computer
  end

  def play(move)
    computer_move = @computer.move

    if PLAYER_WINS_SCENARIOS[move.to_sym] == @computer.move
      @result = :player_win 
    elsif move == computer_move
      @result = :player_draw 
    else
      @result = :player_loss
    end 
  end
end
