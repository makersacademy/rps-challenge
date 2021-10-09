class Player
  CHOICES = ["ROCK", "PAPER", "SCISSORS"]

  attr_reader :choice, :name

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @choice = CHOICES[choice.to_i]
  end

  def choose_random
    @choice = CHOICES.sample
  end

  def winner_against(other_player)
    if @choice == other_player.choice
      "Draw!"
    elsif @choice == "ROCK" && other_player.choice == "SCISSORS" ||
          @choice == "SCISSORS" && other_player.choice == "PAPER" ||
          @choice == "PAPER" && other_player.choice == "ROCK"
      "#{name} wins!"
    else
      "#{other_player.name} wins!"
    end
  end
end
