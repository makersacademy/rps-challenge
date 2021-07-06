class Game
  attr_reader :player_one, :player_two, :instance
  def initialize(first:, second:)
    @player_one = Player.new(first)
    @player_two = Player.new(second)
  end

  def janken
    p1 = @player_one.weapon
    p2 = @player_two.weapon
    if p1 == p2
      "No one, it's a draw"
    elsif p1 == 'rock' && p2 == 'scissors' || p1 == 'scissors' && p2 == 'paper' || p1 == 'paper' && p2 == 'rock'
      @player_one.name
    else
      @player_two.name
    end
  end

  def self.start_game(one:, two:)
    @instance = Game.new(first: one, second: two)
  end

  def self.current_game
    @instance
  end
end
