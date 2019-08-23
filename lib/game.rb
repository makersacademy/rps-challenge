class Game
  attr_reader :name, :player_1, :player_2, :version_name

  def initialize(name, player_class)
    @person = player_class.new(name)
    @name = @person.name
  end

  def version(version)
    @version = version.new
    @version_name = @version.name
  end

  def user_move(move)
    @player_1 = @version.user_move(move)
  end

  def ai_move
    @player_2 = @version.ai_move
  end

  def results
    @results || @version.results(player_1, player_2)
  end
end
