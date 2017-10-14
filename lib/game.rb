class Game

  attr_reader :player, :weapons

  def initialize(player)
    @player = player
    @weapons = [:rock,:paper,:scissors]
  end

  def self.create_game(player)
    @game = Game.new(player)
  end

  def self.current_game
    @game
  end

  def play(weapon)
    player = weapons.index(weapon)
    opponent = weapons.index(weapons.sample)
    if player == opponent
      :tie
    elsif (player + opponent).even?
      player < opponent ? :win : :lose
    else
      player < opponent ? :lose : :win
    end    

  end

end
