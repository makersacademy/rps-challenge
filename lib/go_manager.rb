class GoManager
  # understands the rules of a go
  #   rock blunts scissors
  #   scissors cut paper
  #   paper covers rock
  attr_reader :rules
  VALID_GOES = [:rock, :paper, :scissors]

  def initialize(rules = { rock: :scissors, paper: :rock, scissors: :paper })
    @rules = rules
  end

  def winner(player1, player2)
    return player1 if @rules[player1.go] == player2.go
    return player2 if @rules[player2.go] == player1.go
    raise "invalid game"
  end
end
