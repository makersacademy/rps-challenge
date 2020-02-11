class Game 

  attr_reader :player, :computer, :game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end 


  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

end 
