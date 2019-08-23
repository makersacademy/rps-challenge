class Game
  attr_reader :name, :p1, :p2, :version, :results

  def initialize(name)
    @name = name
    @version
    @p1
    @p2
    @results
  end

  def set_version(version)
    @version = version.new
  end

  def user_move(move)
    @p1 = @version.user_move(move)
  end

  def ai_move
    @p2 = @version.ai_move
  end

  def get_results
    @results = @version.results(p1, p2)
  end
end
