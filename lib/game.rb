class Game
  attr_reader :users_choice

  def initialize(users_choice)
    @users_choice = users_choice
  end

  def generate_computer_choice
    options = ["Rock", "Paper", "Scissors"]

    random_index = rand(3)
    
    @comp_choice = options[random_index]
  end


end