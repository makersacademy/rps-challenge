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
    if player_beaten_by_opponent?
      self.winner=(@opponent)
    elsif is_a_draw?
      self.winner=(:draw)
    else
      self.winner=(@player)
    end
  end

  def winner=(winner)
    @winner = winner
  end

  def is_a_draw?
    @player.weapon.to_sym == @opponent.weapon.to_sym
  end

end
