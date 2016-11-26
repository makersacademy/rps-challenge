# Manages interactions between players

class Game

  attr_reader :player, :weapons, :opponent, :winner

  def self.create(game_klass, player, weapons_module)
    @game = game_klass.new(player, weapons_module)
  end

  def self.instance
    @game
  end

  def initialize(player, weapons_module)
    @player = player
    @weapons = weapons_module.list
    @winner = :none
  end

  def generate_opponent(opponent_klass)
    @opponent = opponent_klass.new
  end

  def opponent=(opponent)
    @opponent = opponent
  end

  def player_beaten_by_opponent?
    @weapons[@player.weapon.to_sym] == @opponent.weapon.to_sym
  end

  def determine_winner
    return @opponent if player_beaten_by_opponent?
    return @player if !player_beaten_by_opponent?
  end

  def winner=(winner)
    @winner = winner
  end

end
