class Game
  attr_reader :name 

  def initialize(name)
    @name = name
  end

  def user_choice(choice)
    @choice = choice
  end

  def response
    @response = ["Rock", "Paper", "Scissors"].sample
  end

  def result
    if (@choice == "Rock") && (@response == "Paper") 
    "You lose!"
    elsif (@choice == "Rock") && (@response == "Scissors") 
     "You win!"
    elsif (@choice == "Paper") && (@response == "Scissors") 
     "You lose!"
    elsif (@choice == "Paper") && (@response == "Rock") 
     "You win!"
    elsif (@choice == "Scissors") && (@response == "Rock") 
      "You lose!"
    elsif (@choice == "Scissors") && (@response == "Paper") 
      "You win!"
    elsif @choice == @response 
      "It's a draw!"
    else 
      "ERROR"
    end
  end

end


