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
  end

  def computer_move
    @computer_choice = CHOICES.sample
  end

end