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
    return "draw" if is_draw?

    return "user" if user_won?
    return "computer"
  end

  private 

  def user_won?
    if @user_choice == "Rock" && @comp_choice == "Scissors"
      true
    elsif @user_choice == "Paper" && @comp_choice == "Rock"
      true
    elsif @user_choice == "Scissors" && @comp_choice == "Paper"
      true
    end
  end

  def is_draw?
    @user_choice == @comp_choice
  end


end