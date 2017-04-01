class Game

  attr_reader :result

  def initialize(choice, computer_choice)
    worker_outer(choice, computer_choice)
  end

  def self.create(choice, computer_choice)
    @results = Game.new(choice, computer_choice)
  end

  def self.instance
    @results
  end

  def worker_outer(choice, computer_choice)
    if choice == computer_choice
      @result = "You tie!"
    elsif
      choice == "Rock" && computer_choice == "Scissors"
      @result = "Winner, winner! Chicken dinner!"
    elsif
      choice == "Paper" && computer_choice == "Rock"
      @result = "Winner, winner! Chicken dinner!"
    elsif
      choice == "Scissors" && computer_choice == "Paper"
      @result = "Winner, winner! Chicken dinner!"
    elsif
      choice == "Paper" && computer_choice == "Spock"
      @result = "Winner, winner! Chicken dinner!"
    elsif
      choice == "Rock" && computer_choice == "Lizard"
      @result = "Winner, winner! Chicken dinner!"
    elsif
      choice == "Scissors" && computer_choice == "Lizard"
      @result = "Winner, winner! Chicken dinner!"
    elsif
      choice == "Spock" && computer_choice == "Rock"
      @result = "Winner, winner! Chicken dinner!"
    elsif
      choice == "Spock" && computer_choice == "Scissors"
      @result = "Winner, winner! Chicken dinner!"
    elsif
      choice == "Lizard" && computer_choice == "Paper"
      @result = "Winner, winner! Chicken dinner!"
    elsif
      choice == "Lizard" && computer_choice == "Spock"
      @result = "Winner, winner! Chicken dinner!"
    else
      @result = "You're a big stinky loser!"
    end
  end


# Win = "Rock" && "Scissors", "Paper" && "Rock" "Scissors" && "Paper" "Paper" && "Spock" "Rock" && "Lizard" "Scissors" && "Lizard" "Spock" && "Rock" "Spock" && "Scissors" "Lizard" && "Paper" "Lizard" && "Spock"


end
