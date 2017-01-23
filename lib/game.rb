require_relative 'rules.rb'

class Game
  include Rules
  attr_reader :player_1, :player_2, :current_player, :waiting_player, :outcome
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @waiting_player = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def switch
    @current_player, @waiting_player = @waiting_player, @current_player
  end

  def play(player, opponent)
    @outcome = OUTCOMES[player.downcase.to_sym][opponent.downcase.to_sym]
  end

  def winner
    if p1_wins?
      "#{@player_1.name}"
    elsif p2_wins?
      "#{@player_2.name}"
    else
      "Neither"
    end
  end

private

  def draw?
    @outcome == :draw
  end

  def p1_wins?
    @outcome == @player_1.weapon.downcase.to_sym
  end

  def p2_wins?
    @outcome == @player_2.weapon.downcase.to_sym
  end
end
