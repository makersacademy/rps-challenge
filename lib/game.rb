class Game

  STANDARD = [rock: 1, paper: 2, scissors: 3]
  EXTENDED = [rock: 1, paper: 2, scissors: 3, lizard: 4, spock: 5]

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, extended = false)
  	@player_1 = player_1
  	@player_2 = player_2
    @extended = extended
  end

  def self.create(player_1, player_2)
  	@game = Game.new(player_1, player_2)
  end

  def self.instance
  	@game
  end

end
