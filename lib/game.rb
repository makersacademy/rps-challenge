class Game
  attr_accessor :player, :computer_choice, :player_choice

  def initialize(player)
    @player = player
    @player_choice = nil
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
    @status = 0

  end

  def result
    if @player_choice == "Rock"
      rock_comparators
    elsif @player_choice == "Paper"
      paper_comparators
    else
      scissors_comparators
    end
    @status
  end

  private

  def rock_comparators
    if @computer_choice == "Rock"
      @status = "draw"
    elsif @computer_choice == "Paper"
      @status = "lose"
    else @status = "win"
    end
  end

  def paper_comparators
    if @computer_choice == "Paper"
      @status = "draw"
    elsif @computer_choice == "Scissors"
      @status = "lose"
    else @status = "win"
    end
  end

  def scissors_comparators
    if @computer_choice == "Scissors"
      @status = "draw"
    elsif @computer_choice == "Rock"
      @status = "lose"
    else @status = "win"
    end
  end

end
