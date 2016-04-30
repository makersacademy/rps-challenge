class Game
  attr_reader :player1, :player2, :user_choice, :computer_choice
  def initialize(player1, player2 = "Computer")
    @player1 = player1
    @player2 = player2
    @combos = {"Scissors" => "Paper", "Paper" => "Rock", "Rock" => "Scissors"}
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
    computers_pick
    if @user_choice == @computer_choice
      "Tie"
    elsif @combos[@user_choice] == @computer_choice
      @player1
    else
      @player2
    end
  end
end
