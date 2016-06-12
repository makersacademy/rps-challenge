require_relative 'computer'
require_relative 'player'

class Game

  RULES = { Rock: :Scissors,
          Paper: :Rock,
          Scissors: :Paper }

  attr_reader :computer, :player

  def initialize(player, computer=Computer.new)
    @player = player
    @computer= computer
  end

  def outcome
    return :draw if same_choice?
    return :lose if player_loses?
    return :win if player_wins?
  end

  def self.build(player_name)
    player = Player.new(player_name)
    new(player)
  end

  def self.set_game(player_name)
    @game = Game.build(player_name)
  end

  def self.instance
    @game
  end

  private

  def same_choice?
    @player.choice == @computer.choice
  end

  def player_wins?
    RULES[@player.choice] == @computer.choice
  end

  def player_loses?
    RULES[@player.choice] != @computer.choice
  end

end