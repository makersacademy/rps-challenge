class Game

  attr_reader :p1_name, :p1_choice, :comp_choice, :message

  def initialize(player1)
    @p1_name = player1.name
  end

  def computer_choice
    @comp_choice = ["rock", "paper", "scissors"].sample
  end

  def player_choice(p1_choice)
    @p1_choice = p1_choice
  end

  def results
    return @message = "Both have lost as none have won." if @p1_choice == @comp_choice

    if @p1_choice == "rock" && @comp_choice == "scissors"
      @message = "#{@p1_name} is the victor."
    elsif @p1_choice == "scissors" && @comp_choice == "paper"
      @message = "#{@p1_name} is the victor."
    elsif @p1_choice == "paper" && @comp_choice == "rock"
      @message = "#{@p1_name} is the victor."
    else
      @message = "#{@p1_name} has suffered defeat."
    end
  end

end

# in irb
# marija = Player.new("Marija")
# marija.choice > taken from params
# marija.name -> "Marija"
# marija.choice -> "rock"

# game = Game.new(marija.name, marija.choice)
# game.computer_choice -> generates R,P,S as @comp_choice
# game.results -> returns message from @result
