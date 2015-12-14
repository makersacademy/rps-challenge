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
    game
  end

  def find_game id
    games[id]
  end

  private
  attr_reader :game_klass, :human_klass, :computer_klass, :games
  
  def store_game(game)
    games[game.object_id] = game
  end
end
