class Game
  MIN_PLAYERS = 2

  attr_reader :players, :current_player
  attr_accessor :turn_counter

  def initialize(players, rules)
    @players = players
    @rules = rules
    @current_player = @players[0]
    @player_selection = []
    @turn_counter = 0
  end

  def turn(selection)
    @player_selection.push selection
    @current_player = @players[1]
  end

  def calculate_win
    if @rules[@player_selection[0].to_sym].include? @player_selection[1]
      "#{@players[0][:player].name} wins"
    elsif @rules[@player_selection[1].to_sym].include? @player_selection[0]
      "#{@players[1][:player].name} wins"
    else
      'Tie'
    end
  end
end
