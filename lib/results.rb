class Results

  attr_reader :weapons, :user_choice

  def initialize
    @weapons = ["Rock", "Paper", "Scissors"]
    @user_choice = user_choice
  end

  def bot_weapon
    @weapons.sample
  end

  def winner(user_name, user_choice)
    chosen_bot_weapon = bot_weapon
    return user_name if chosen_bot_weapon == "Rock" && user_choice == "Paper"
    return user_name if chosen_bot_weapon == "Paper" && user_choice == "Scissors"
    return user_name if chosen_bot_weapon == "Scissors" && user_choice == "Rock"
    "The Bored Bot"
  end

end
