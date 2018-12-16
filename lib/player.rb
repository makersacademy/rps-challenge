class Player

  attr_reader :name, :choice, :computer_choice

  def initialize(name, choice = nil, computer_choice = nil)
    @name = name
    @choice = choice
    @computer_choice = computer_choice
  end

  def choose(choice)
    @choice = choice
  end

  def randomchoice
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def game_result
    a = "rock"
    b = "paper"
    c = "scissors"

    lose1 = choice == a && computer_choice == b
    lose2 = choice == b && computer_choice == c
    lose3 = choice == c && computer_choice == a
    win1 = choice == a && computer_choice == c
    win2 = choice == b && computer_choice == a
    win3 = choice == c && computer_choice == b

    if computer_choice == choice
      "draw"
    elsif lose1 || lose2 || lose3
      "lose"
    elsif win1 || win2 || win3
      "win"
    end
  end

  def self.create(name, choice = nil, computer_choice = nil)
   @player = Player.new(name, choice, computer_choice)
  end

  def self.instance
   @player
  end


end
