class Game

  def initialize(user)
    @user = user
    @computer = Computer.new
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def player_name
    @user.player_name
  end

  def user_chooses(choice)
    @user.make_a_choice(choice)
  end

  def user_choice
    @user.choice
  end

  def computer_chooses
    @computer.make_a_choice
  end

  def computer_choice
    @computer.choice
  end

  def score_game
    if user_winning_choices.include?([user_choice, computer_choice])
      win
    elsif user_choice == computer_choice
      draw
    end
  end

  def win
    @win = true
  end

  def draw
    @draw = true
  end

  def result
    return "Win" if @win
    return "Draw" if @draw
    return "Lose"
  end

  def user_winning_choices
    [["Rock", "Scissors"], ["Paper", "Rock"], ["Scissors", "Paper"]]
  end

end
