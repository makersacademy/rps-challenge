class Game
  attr_reader :user_choice

  def initialize(users_choice)
    @user_choice = users_choice
  end

  def generate_computer_choice
    options = ["Rock", "Paper", "Scissors"]

    random_index = rand(3)
    
    @comp_choice = options[random_index]
  end

  def decide_winner
    generate_computer_choice
    p @user_choice
    p @comp_choice

    if @user_choice == @comp_choice
      "draw"
    elsif @user_choice == "Rock" && @comp_choice == "Scissors"
      "user" 
    elsif @user_choice == "Paper" && @comp_choice == "Rock"
      "user"
    elsif @user_choice == "Scissors" && @comp_choice == "Paper"
      "user"
    else
      "computer"
    end
  end


end