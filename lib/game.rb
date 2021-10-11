require_relative 'computer'
require_relative 'player'
require_relative 'weapon'

class Game

  attr_reader :players, :pc_selection, :p1_selection

  def initialize(player_class = Player.new(:name_1), weapon_class = Weapon.new,
    computer_klass = Computer.new)
    @player_1 = player_class
    @weapon   = weapon_class
    @computer = computer_class
    @players  = {p1: @player_1}
    @p1_selection = :none
    @pc_selection = :none
  end
  
  def player_name_1
    players[:p1].name
  end

  def p1_choice(choice)
    @p1_selection = choice.to_sym
  end

  def computer_choice
    @pc_selection = @computer.random_option
  end

  def result
    @weapon.judge(p1_selection, pc_selection)
  end
end
