class Rules

  RPS_OPTIONS = [:rock, :paper, :scissors]
  RPSSL_OPTIONS = [:rock, :paper, :scissors, :spock, :lizard]
  GRID = {
      rock: [:scissors, :lizard],
      paper: [:spock, :rock],
      scissors: [:lizard, :paper],
      spock: [:rock, :scissors],
      lizard: [:spock, :paper]
    }

  attr_reader = :options

  def initialize(rules)
    @rules = rules
  end

  def options
    return RPSSL_OPTIONS if @rules == "rpssl"
    RPS_OPTIONS
  end

  def spock?
    return true if @rules == "rpssl"
    false
  end

  def winner(player1, player2)
    # if @rules == "rpssl"
      return player1.name if GRID[player1.action].include?(player2.action)
      return player2.name if GRID[player2.action].include?(player1.action)
      "Draw"
    # else
    #   return player1.name if player2.action == RPS_GRID[player1.action]
    #   return player2.name if player1.action == RPS_GRID[player2.action]
    #   "Draw"
    # end
  end



end
