class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
    @game_array = []
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def move(player_option, computer_option)
    @game_array << player_option
    @game_array << computer_option
  end

end
