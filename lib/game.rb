class Game

  attr_reader :player1
  attr_accessor :choice

  def initialize(player1)
    @player1 = player1
    @options = [:rock, :paper, :scissors]
  end

  def self.create_new_game(player1)
    @game = Game.new(player1)
  end

  def self.game_instance
    @game
  end

  def choice_message(choice)
    "You chose #{choice}"
  end

  def computer_choice
    @options.sample.to_s.capitalize
  end

  def computer_choice_message(choice)
    "Computer chose #{choice}"
  end

end
