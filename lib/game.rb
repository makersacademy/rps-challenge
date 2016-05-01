require_relative 'player'
class Game

  RULES = {
    ROCK: { PAPER: 2, SCISSORS: 1, ROCK: 'DRAW' },
    PAPER: { SCISSORS: 2, ROCK: 1, PAPER: 'DRAW' },
    SCISSORS: { ROCK: 2, PAPER: 1, SCISSORS: 'DRAW' }
  }
  attr :player, :machine

  def self.set_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player, machine=Machine)
    @player = player
    @machine = machine
  end

  def player_option
    player.weapon
  end

  def machine_option
    machine.choose_weapon
  end

  def win
    winner
  end

private

def winner
  return 'DRAW!' if RULES[machine_option][player_option].to_s == 'DRAW'
  return 'Machine wins!' if RULES[machine_option][player_option].to_s == '1'
  return "#{@player.name} wins!" if RULES[machine_option][player_option].to_s == '2'
end

end
