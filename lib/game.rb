class Game
  attr_reader :name, :player_1, :player_2, :current_player

  def initialize(player_1_name, player_class = Player, opponent_class = Computer, opponent_name = 'Computer')
    @player_1 = player_class.new(player_1_name)
    @player_2 = opponent_class.new(opponent_name)
    @players = [@player_1, @player_2]
    @current_player = @players.first
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

  def switch_player
    @current_player = @players.reject { |player| player == @current_player }.first
  end

  def reset
    @player_1.reset_move
    @player_2.reset_move
    @results = nil
  end
end
