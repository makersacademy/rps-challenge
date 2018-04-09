class Game

  def initialize
    @players = {}
    @@game = self
  end

  def Game.get_game
    (defined? @@game) ? @@game : Game.new
  end

  def add_player name
    @players[name] = nil
  end

  def n_of_players
    @players.length
  end

  def set_choice input
   player, choice = input.scan /\w+/ 
   @players[player] = choice
  end

  def choices_complete?
    @players.values.all? { |v| v }
  end

  def finalize
    p1, p2 = @players.keys
    choices = ['rock','scissors','paper','rock']
    return @winner = nil if @players[p1] == @players[p2]
    return @winner = p1 if choices[choices.index(@players[p1]) + 1] == @players[p2]
    @winner = p2
  end
     
  def message_for player
    "You chose #{@players[player]} and #{other player} chose #{@players[other player]}. #{message_helper player}"
  end

  private
  def other player
    @players.keys.find { |p| p != player }
  end
  
  def message_helper player
    return "Even!!" if @winner.nil?
    return "You lose!" if @winner != player
    return "You won!!" if @winner == player
  end
end
