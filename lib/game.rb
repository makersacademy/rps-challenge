class Game

  attr_reader :player_1, :player_1_choice, :computer_choice

  def initialize(player_1)
    @player_1 = player_1
  end

  def store_player_1_choice(choice)
    @player_1_choice = choice
  end

  def create_computer_choice
    choices = ["Rock", "Paper", "Scissors"]
    @computer_choice = choices[rand(3)]
  end

  def result
    name = @player_1.name
    string = "#{name} wins!"
    if player_1_choice == "Rock" && computer_choice == "Scissors"
      string
    elsif player_1_choice == "Scissors" && computer_choice == "Paper"
      string
    elsif player_1_choice == "Paper" && computer_choice == "Rock"
      string
    elsif player_1_choice == computer_choice
      "It's a draw!"
    else
      "Computer wins!"
    end
  end
end