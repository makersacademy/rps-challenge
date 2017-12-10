require_relative 'computer'

class Game

  OUTCOMES = {
    rock: { paper: :lose, rock: :tied, scissors: :win },
    paper: { paper: :tied, rock: :win, scissors: :lose },
    scissors: { paper: :win, rock: :lose, scissors: :tied }
  }

  attr_reader :player_name, :computer_weapon, :outcome

  def initialize(player_name)
    @player_name = player_name
    @computer = Computer.new
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def result(player_weapon)
    @computer_weapon = @computer.weapon
    @outcome = OUTCOMES[player_weapon.to_sym][@computer_weapon.to_sym]
  end
end
