class Game
  attr_reader :name, :player_1, :player_2, :current_player

  def initialize(name, player_class = Player, cpu_class = Computer)
    @players = [player_class.new(name)]
    @current_player = @players.first
    @name = @players.first.name
    @player_1 = player_class.new(name)
    @player_2 = cpu_class.new
  end

  def version(version = RockPaperScissors)
    @version || @version = version.new
  end

  def version_name
    @version_name || @version_name = @version.name
  end

  def results
    @results || @version.results(@player_1.move, @player_2.move)
  end
end
