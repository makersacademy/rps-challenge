require_relative './computer'
require_relative './weapon'

class Game

  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  def self.game
    @game
  end

  def self.start_game(player1, player2, weapon_class = Weapon)
    @game = self.new(player1, player2, weapon_class)
  end

  def initialize(player1, player2, weapon_class = Weapon)
    @player1 = player1.object_id
    @player2 = player2.object_id
    @players = { @player1 => player1, @player2 => player2 }
    @score = [0,0]
    @result = {winner: nil, result: nil}
    @weapon_class = weapon_class
  end

  def ready?
    @players.all? { |id, player| player.has_weapon? }
  end

  def add_weapon(player_id, weapon)
    raise "Not a valid weapon" unless valid_weapon?(weapon)
    raise "Player already has a weapon" if @players[player_id].has_weapon?
    @players[player_id].set_weapon(weapon.to_sym)
    set_computer_weapon if one_player?
  end

  def play
    if draw?
      draw
    else
      @result[:result] = :result
      weaponize(player1.weapon).beats?(weaponize(player2.weapon)) ? set_winner(@player1) : set_winner(@player2)
    end
  end

  def reset
    @players.each { |id, player| player.remove_weapon }
    @result[:winner] = nil
    @result[:result] = nil
  end

  def player1
    @players[@player1]
  end

  def player2
    @players[@player2]
  end

  def player1_score
    @score[0]
  end

  def player2_score
    @score[1]
  end

  def result
    @result[:result]
  end

  def winner
    @result[:winner]
  end

  private

  def one_player?
    @players.any? { |id, player| player.is_a?(Computer) }
  end

  def set_computer_weapon
    @players.each { |id, player| player.set_weapon if player.is_a?(Computer) }
  end

  def draw
    @result[:winner] = nil
    @result[:result] = :draw
  end

  def draw?
    @players[@player1].weapon == @players[@player2].weapon
  end

  def set_winner(player_id)
    @result[:winner] = @players[player_id]
    player_id == @player1 ? @score[0] += 1 : @score[1] += 1
  end

  def weaponize(weapon)
    @weapon_class.new(weapon, RULES)
  end

  def valid_weapon?(weapon)
    RULES.any? { |type, beats| type == weapon.to_sym }
  end

end
