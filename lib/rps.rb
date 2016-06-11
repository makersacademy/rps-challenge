class RPS

  attr_reader :computer_choice, :input

  def self.create
    @game = RPS.new
  end

  def self.instance
    @game
  end

  def play
    move_comparison
  end

  def player_input(input)
    @input = input
  end

  def move_chooser
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  private

  def move_comparison
    possibilities
  end

  def possibilities
    if input == @computer_choice
      draw_message
    elsif input == "rock"
      @computer_choice == "scissors" ? winning_message : losing_message
    elsif input == "scissors"
      @computer_choice == "paper" ? winning_message : losing_message
    else input == "paper"
      @computer_choice == "rock" ? winning_message : losing_message
    end

  end

  def winning_message
    "Congratulations player, you have won"
  end

  def losing_message
    "Sorry player, you have lost"
  end

  def draw_message
    "This is awkward, it's a tie"
  end

end
