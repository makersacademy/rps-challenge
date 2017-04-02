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
      choice == "Rock 🤘" && computer_choice == "Scissors ✂️"
      @result = "Rock breaks scissors! You win!"
    elsif
      choice == "Paper 📄" && computer_choice == "Rock 🤘"
      @result = "You win!"
    elsif
      choice == "Scissors ✂️" && computer_choice == "Paper 📄"
      @result = "Scissors cut paper! You win!"
    elsif
      choice == "Paper 📄" && computer_choice == "Spock 🖖"
      @result = "Paper disproves Spock! You win!"
    elsif
      choice == "Rock 🤘" && computer_choice == "Lizard 🦎"
      @result = "Rock crushes lizard! You win!"
    elsif
      choice == "Scissors ✂️" && computer_choice == "Lizard 🦎"
      @result = "Scissors decapitates lizard! You win!"
    elsif
      choice == "Spock 🖖" && computer_choice == "Rock 🤘"
      @result = "You win!"
    elsif
      choice == "Spock 🖖" && computer_choice == "Scissors ✂️"
      @result = "You win!"
    elsif
      choice == "Lizard 🦎" && computer_choice == "Paper 📄"
      @result = "Lizard eats paper! You win!"
    elsif
      choice == "Lizard 🦎" && computer_choice == "Spock 🖖"
      @result = "Lizard poisons Spock! You win!"
    else
      @result = "You lose!"
    end
  end
end
