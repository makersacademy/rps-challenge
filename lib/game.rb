class Game
  attr_reader :player, :user_choice, :computer_choice
  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = self.new(player)
  end

  def self.instance
    @game
  end

  def choose(choice)
    @user_choice = choice
  end

  def computers_pick
    choices = ["Rock", "Paper", "Scissors"]
    @computer_choice = choices[Kernel.rand(3)]
  end

  def winner
    if @user_choice == "Scissors" && @computer_choice == "Paper"
      @player
    end
  end
end
