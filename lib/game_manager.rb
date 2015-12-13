class GameManager
  def initialize(game_klass, human_klass, computer_klass)
    @game_klass = game_klass
    @human_klass = human_klass
    @computer_klass = computer_klass
    @games = {}
  end

  def new_game(session)
    game = game_klass.new(session, human_klass, computer_klass)
    store_game(game)
  end

  def current_game session
    games[session[:current_game_id]]
  end

  private
  attr_reader :game_klass, :human_klass, :computer_klass, :games
  
  def store_game(game)
    games[game.object_id] = game
    game.object_id
  end
end
