

class Game
  attr_reader :player_one, :player_two, :instance
  def initialize(first:, second: 'evil computer class goes here')
    @player_one = first
    @player_two = second
  end

  def janken
    p1 = @player_one.weapon
    p2 = @player_two.weapon
    if p1 == p2
      'Draw'
    elsif p1 == 'rock' && p2 == 'scissors' || p1 == 'scissors' && p2 == 'paper' || p1 == 'paper' && p2 == 'rock'
      @player_one.name
    else
      @player_two.name
    end
  end

  def self.start_game(one:,two:)
    @instance = Game.new(first: one, second: two)
  end

  def self.current_game
    @instance
  end

  def self.first
    @instance.player_one.name
  end
end
