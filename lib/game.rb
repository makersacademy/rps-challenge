class Game

  attr_reader :player_name, :player_choice, :computer_choice

  def initialize(name = "Guest")
    @player_name = name
    @player_choice = ""
    @computer_choice = ""
  end

  def get_computer_choice
    case random_number
      when 1
        @computer_choice = "Rock"
      when 2
        @computer_choice = "Paper"
      when 3
        @computer_choice = "Scissors"
    end
  end

  def set_player_choice(choice)
    @player_choice = choice
  end

  def random_number
    Random.new.rand(1..3)
  end

  def compare_choices
    if @player_choice == @computer_choice
      "Draw"
    elsif (@player_choice == "Rock" && @computer_choice == "Scissors") | (@player_choice == "Paper" && @computer_choice == "Rock") | (@player_choice == "Scissors" && @computer_choice == "Paper")
      "#{@player_name} wins."
    elsif (@player_choice == "Scissors" && @computer_choice == "Rock") | (@player_choice == "Rock" && @computer_choice == "Paper") | (@player_choice == "Paper" && @computer_choice == "Scissors")
      "Computer wins."
    end
  end
end
