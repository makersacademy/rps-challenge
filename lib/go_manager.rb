class GoManager
  # understands the rules of a go
  #   rock blunts scissors
  #   scissors cut paper
  #   paper covers rock
  attr_reader :rules, :valid_goes

  def initialize(rules = { rock: :scissors, paper: :rock, scissors: :paper })
    @rules = rules
    @valid_goes = rules.keys.uniq
  end

  def winner(player1, player2)
    return player1.name if @rules[player1.go] == player2.go
    return player2.name if @rules[player2.go] == player1.go
    return :Draw if player2.go == player1.go
  end

  def random_go
    @valid_goes.sample.to_sym
  end

end
