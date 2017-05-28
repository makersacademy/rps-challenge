class Game

  attr_reader :player_one, :player_two, :winner

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @winner = "Nobody"
  end

  def self.create(player_one, player_two)
    @game = self.new(player_one, player_two)
  end

  def self.instance
    @game
  end

  def decide_winner
    @winner = @player_one.name if @player_one.weapon.beats?(@player_two.weapon)
    @winner = @player_two.name if @player_two.weapon.beats?(@player_one.weapon)
    @winner
  end

  def reset
    @winner = "Nobody"
  end

end
