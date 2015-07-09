require_relative 'dynamics'

module RPSLS

  include Dynamics

  def options
    ["rock","spock", "paper", "lizard","scissors"]
  end

  def rules
    ["Rock blunts Scissors", "Scissors cuts Paper",
     "Paper wraps Rock", "Lizard poisons Spock",
     "Rock crushes Lizard", "Spock smashes Scissors",
     "Scissors decapitates Lizard", "Lizard eats Paper",
     "Paper disproves Spock", "Spock vapourizes Rock"]
  end

end
