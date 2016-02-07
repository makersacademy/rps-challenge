class Game

  DEFAULT_RULES = {rock: [:scissors], paper: [:rock], scissors: [:paper]}

  attr_reader :rules, :players, :options, :result

  def initialize(rules=DEFAULT_RULES)
    @rules = rules
    @players = []
  end

  def add_player(player)
    players << player
  end

  def provide_options
    @options = rules.map{|x,y| x}
  end

  def decide_result
    choice1 = players[0].player_choice
    choice2 = players[1].player_choice
    return draw if choice2 == choice1
    rules[choice1].include?(choice2) ? win_first : lost_first
    result
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  private

  def win_first
    @result = "#{player1.name} WON, #{player2.name} LOST"
  end

  def lost_first
    @result = "#{player2.name} WON, #{player1.name} LOST"
  end

  def draw
    @result = "Result of the game is DRAW"
  end

end