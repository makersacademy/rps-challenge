class Game
  attr_reader :player_name, :winning_score, :user_score, :computer_score, :statement_of_game

  DEFAULT_USER_SCORE = 0
  DEFAULT_COMPUTER_SCORE = 0

  def initialize(player_name, winning_score, user_score = DEFAULT_USER_SCORE, computer_score = DEFAULT_COMPUTER_SCORE)
    @player_name = player_name
    @winning_score = winning_score
    @user_score = user_score
    @computer_score = computer_score
    @statement_of_game = "Make Your Move..."
  end

  def user_chooses_rock
    get_computer_choice("Rock")
  end

  def user_chooses_paper
    get_computer_choice("Paper")
  end

  def user_chooses_scissors
    get_computer_choice("Scissors")
  end

  private

  def get_computer_choice(user_choice)
    random_number = rand(1..3)
    if random_number == 1
      change_variables("Rock", user_choice)
    elsif random_number == 2
      change_variables("Paper", user_choice)
    else
      change_variables("Scissors", user_choice)
    end
  end

  def change_variables(computer_choice, user_choice)
    if computer_choice == "Rock" && user_choice == "Scissors" || computer_choice == "Paper" && user_choice == "Rock" || computer_choice == "Scissors" && user_choice == "Paper"
      @computer_score = @computer_score + 1
    elsif computer_choice == "Rock" && user_choice == "Paper" || computer_choice == "Paper" && user_choice == "Scissors" || computer_choice == "Scissors" && user_choice == "Rock"
      @user_score = @user_score + 1
    end
    @statement_of_game = "User chooses #{user_choice} - Comp chooses #{computer_choice}"
  end


end
