class Game
  attr_reader :player_name

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

  def player_move_wins?(move)
    PLAYER_WINS_SCENARIOS[move.to_sym] == @computer.move
  end
end
