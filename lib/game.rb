class Game

  attr_reader :computer_choice, :player_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end


  def self.create(player_choice, computer_choice)
    @game = Game.new(player_choice, computer_choice)
  end

  def self.instance
    @game
  end

end