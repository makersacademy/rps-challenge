require_relative 'computer'
require_relative 'weapon'
require_relative 'player'

class RPS
  attr_reader :computer, :player_choice, :player

  def initialize(player, weapon_class = Weapon, computer = Computer.new)
    @player = player
    @player_choice = nil
    @weapon_class = weapon_class
    @computer = computer
    @player2_choice = nil
    @multiplayer = false
  end

  def self.create(player)
    @rps = RPS.new(player)
  end

  def self.instance
    @rps
  end

  def switch_to_multiplayer
    @multiplayer = true
  end

  def player_2(player)
    @player2 = Player.new(player)
  end

  def player_choose(choice)
    @player_choice = @weapon_class.new(choice)
  end

  def player2_choose(choice)
    @player2_choice = @weapon_class.new(choice)
  end

  def result
    @computer.weapon if @multiplayer == false
    @multiplayer == true ? opponent = @player2_choice : opponent = @computer
    @player_choice.draw?(opponent) ? :draw : @player_choice.beats?(opponent) ? :win : :lose
  end

end
