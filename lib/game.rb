require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :player_selection, :computer_selection, :name

  RULES = {
    rock:     { rock: 'Draw', paper: 'Lose', scissors: 'Win' },
    paper:    { rock: 'Win', paper: 'Draw', scissors: 'Lose' },
    scissors: { rock: 'Lose', paper: 'Win', scissors: 'Draw'}
  }

  def initialize(name)
    @computer_selection = nil
    @player_selection = nil
    @computer = Computer.new
    @player = Player.new(name)
    @name = name
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def winner?
    result == 'Win'
  end

  def loser?
    result == 'Lose'
  end

  def draw?
    result == 'Draw'
  end

  def computer_selection
    @computer_selection = @computer.selection
  end

  def player_selection(weapon)
    @player_selection = @player.choose_weapon(weapon)
  end

  def result
    return if @computer_selection.nil?
    RULES[@player_selection][@computer_selection]
  end

end
