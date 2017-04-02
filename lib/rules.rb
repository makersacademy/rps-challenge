require_relative 'hand'

class Rules

  def self.traditional
    { "paper" => Hand.new('paper', 'rock'),
      "scissors" => Hand.new('scissors', 'paper'),
      "rock" => Hand.new('rock', 'scissors') }
  end

end
