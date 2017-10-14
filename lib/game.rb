class Game

  attr_reader :player, :weapons, :result

  def initialize(player)
    @player = player
    @weapons = [:rock, :paper, :scissors]
  end

  def self.create_game(player)
    @game = Game.new(player)
  end

  def self.current_game
    @game
  end

  def play(weapon)
    player = weapons.index(weapon.downcase.to_sym)
    opponent = create_opponent
    @result = calculate_winner(player, opponent)
  end

  private

  def calculate_winner(player, opponent)
    return :tie if player == opponent
    order = player_first?(player, opponent)
    (player + opponent).even? ? translate(order) : translate(!order)
  end

  def translate(value)
    value ? :win : :lose
  end

  def player_first?(player, opponent)
    player < opponent
  end

  def create_opponent
    weapons.index(weapons.sample)
  end

end
