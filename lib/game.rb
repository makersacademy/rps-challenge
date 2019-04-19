class Game
  attr_reader :player, :computer
  # attr_accessor :choice

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def chose(choice)
    @player.make_decision(choice)
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

end
