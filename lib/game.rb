require_relative './computer'
require_relative './weapon'

class Game

  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  def self.games(id)
    @games[id]
  end

  def self.multi_games(player_id)
    @games.select { |id, game| !game.one_player? }
  end

  def self.start_game(player1, player2 = :pending, weapon_class = Weapon)
    @games ||= {}
    game = Game.new(player1, player2, weapon_class)
    game_id = game.object_id
    @games[game_id] = game
    return game_id
  end

  def self.delete_game(id)
    @games.delete(id)
  end

  def initialize(player1, player2 , weapon_class = Weapon)
    @player1 = player1.object_id
    @player2 = player2.object_id
    @players = { @player1 => player1, @player2 => player2 }
    @score = [0, 0]
    @result = { winner: nil, result: nil }
    @weapon_class = weapon_class
  end

  def add_second_player(game_id, player)
    raise "Player already set" unless @players[@player2] == :pending
    @players.delete(@player2)
    @player2 = player.object_id
    @players[@player2] = player
  end

  def ready?
    @players.all? { |_id, player| player != :pending && player.weapon? }
  end

  def add_weapon(player_id, weapon)
    raise "Player not set" if @players[player_id] == :pending
    raise "Not a valid weapon" unless valid_weapon?(weapon)
    raise "Player already has a weapon" if @players[player_id].weapon?
    @players[player_id].give_weapon(weapon.to_sym)
    set_computer_weapon if one_player?
  end

  def play
    if draw?
      draw
    else
      @result[:result] = :result
      weaponize(player1.weapon).beats?(weaponize(player2.weapon)) ? declare_winner(@player1) : declare_winner(@player2)
    end
  end

  def reset
    @players.each_value { |player| player.remove_weapon }
    @result[:winner] = nil
    @result[:result] = nil
  end

  def player1
    @players[@player1]
  end

  def player2
    @players[@player2] == :pending ? "Pending" : @players[@player2]
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

  def player_set?(player_id)
    @players.any? { |id, _player| id == player_id }
  end

  def one_player?
    @players.any? { |_id, player| player.is_a?(Computer) }
  end

  def opponent(player_id)
    @players.select { |id, _player| id != player_id }.first.last
  end

  private

  def set_computer_weapon
    @players.each_value { |player| player.give_weapon if player.is_a?(Computer) }
  end

  def draw
    @result[:winner] = nil
    @result[:result] = :draw
  end

  def draw?
    @players[@player1].weapon == @players[@player2].weapon
  end

  def declare_winner(player_id)
    @result[:winner] = @players[player_id]
    player_id == @player1 ? @score[0] += 1 : @score[1] += 1
  end

  def weaponize(weapon)
    @weapon_class.new(weapon, RULES)
  end

  def valid_weapon?(weapon)
    RULES.any? { |type, _beats| type == weapon.to_sym }
  end

end
