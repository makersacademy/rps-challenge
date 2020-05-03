class Winner
  def initialize(user_choice, random_choice)
    @user_choice = user_choice
    @random_choice = random_choice
  end

  def outcome
    if @user_choice == @random_choice
      "Draw"
    elsif @user_choice == "Rock" && @random_choice == "Scissors"
      "Human"
    elsif @user_choice == "Rock" && @random_choice == "Paper"
      "Computer"
    elsif @user_choice == "Scissors" && @random_choice == "Rock"
      "Computer"
    elsif @user_choice == "Scissors" && @random_choice == "Paper"
      "Human"
    elsif @user_choice == "Paper" && @random_choice == "Rock"
      "Human"
    elsif @user_choice == "Paper" && @random_choice == "Scissors"
      "Computer"
    end
  end


end
