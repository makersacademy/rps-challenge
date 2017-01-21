class Game

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :players, :opponent, :player, :choices, :random_choice

  def initialize(player)
    @player = player
    @players = [@player, @opponent]
    @choices = ["Rock", "Paper", "Scissors"]
    @opponent = Player.new
  end

  def random_choice
    @choices.sample
  end

  def result
    if @player.choice == @opponent.choice
      "It's a tie!"
    else
      if @player.choice == "Rock"
        if @opponent.choice == "Paper"
          "You lose!"
        else
          "You win!"
        end
      elsif @player.choice == "Paper"
        if @opponent.choice == "Scissors"
          "You lose!"
        else
          "You win!"
        end
      elsif @player.choice == "Scissors"
        if @opponent.choice == "Rock"
          "You lose!"
        else
          "You win!"
        end
      end
    end
  end

end
