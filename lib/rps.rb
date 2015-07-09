require_relative 'dynamics'

module RPS

  include Dynamics

  def options
    ["rock", "paper", "scissors"]
  end

  def rules
    ["Rock blunts Scissors", "Scissors cuts Paper", "Paper wraps Rock"]
  end

end
