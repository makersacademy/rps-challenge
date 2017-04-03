require_relative 'hand'

class Rules

  def self.traditional
    { "paper" => Hand.new('paper', 'rock'),
      "scissors" => Hand.new('scissors', 'paper'),
      "rock" => Hand.new('rock', 'scissors') }
  end

  def self.spock
    { "paper" => Hand.new('paper', 'rock', 'spock'),
      "scissors" => Hand.new('scissors', 'paper', 'lizard'),
      "rock" => Hand.new('rock', 'scissors', 'lizard'),
      "spock" => Hand.new('spock', 'scissors', 'rock'),
      "lizard" => Hand.new('lizard', 'spock', 'paper') }
  end



end
