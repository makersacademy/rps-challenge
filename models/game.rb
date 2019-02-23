class Game
  attr_reader :player_name
  GAME_OPTIONS = ['rock', 'paper', 'scissors']

  PLAYER_WINS_SCENARIOS = {
    rock: 'scissors',
    paper: 'rock',
    scissors: 'paper'
  }

  def self.current_game
    @current_game
  end

  def self.create(player_name:)
    @current_game = Game.new(player_name: player_name)
  end

  def initialize(player_name:, game_options: GAME_OPTIONS)
    @player_name = player_name 
    @game_options = game_options
  end

  def play(move)
    computer_move = @game_options[rand(0..2)]

    PLAYER_WINS_SCENARIOS[move.to_sym] == computer_move
  end
end
