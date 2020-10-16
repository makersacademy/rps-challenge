require "delegate"

class Game < SimpleDelegator
  attr_reader :name, :draws, :wins, :losses

  def initialize(name)
    @name = name
    @wins = 0
    @losses = 0
    @draws = 0
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def play(choice)
    computer_choice = random_choice
    if choice == computer_choice
      @draws += 1
      "draw"
    elsif computer_choice == "rock"
      if choice == "paper"
        @wins += 1
        "win"
      elsif choice == "scissors"
        @losses += 1
        "lose"
      end
    elsif computer_choice == "paper"
      if choice == "scissors"
        @wins += 1
        "win"
      elsif choice == "rock"
        @losses += 1
        "lose"
      end
    elsif computer_choice == "scissors"
      if choice == "rock"
        @wins += 1
        "win"
      elsif choice == "paper"
        @losses += 1
        "lose"
      end
    end
  end
end
