class Game

  attr_reader :options, :player

  def initialize(player)
    @options = ["Rock", "Paper", "Scissors"]
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def play
    @options.sample
  end

  def declare_winner(random_option)
    if @player.option == random_option
      "nobody"
    elsif @player.option == "Rock" && random_option == "Paper" ||
          @player.option == "Paper" && random_option == "Scissors" ||
          @player.option == "Scissors" && random_option == "Rock"
      "computer"
    else
      @player.name
    end
  end

end
