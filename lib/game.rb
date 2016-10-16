class Game

	attr_reader :player, :choice, :computer_choice

	CHOICES = ["Rock", "Paper", "Scissors"]

  def self.instance
		@game
	end

	def self.create(name)
		@game = Game.new(name)
	end

  def initialize(player)
    @player = player
  end

  def move(choice)
    @choice = choice
    computer_move
    outcome
  end

  def computer_move
    @win = nil
    @computer_choice = CHOICES.sample
  end

  def outcome
    winning_situations
    losing_situations
  end   

  def win?
    @win
  end

  def losing_situations
    @win = false if (choice == "Rock" && computer_choice == "Paper") || 
    (choice == "Scissors" && computer_choice == "Rock") ||
    (choice == "Paper" && computer_choice == "Scissors")
  end

  def winning_situations
    @win = true if (choice == "Rock" && computer_choice == "Scissors") ||
    (choice == "Scissors" && computer_choice == "Paper") ||  
    (choice == "Paper" && computer_choice == "Rock")
  end
end