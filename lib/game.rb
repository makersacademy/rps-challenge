require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer, :win_states

  class << self
    attr_reader :instance

    def create(name)
      @instance = new(name)
    end
  end

  def initialize(name, player_class = Player, computer_class = Computer)
    @player_class   = player_class
    @player         = player_class.new(name)
    @computer_class = computer_class
    @computer       = computer_class.new
    @win_states     = { Rock: "Scissors", Paper: "Rock", Scissors: "Paper" }
  end

  def check_winner
    if player.weapon == computer.weapon
      "A tie."
    elsif player.weapon == win_states[computer.weapon.to_sym]
      "Computer Wins! #{computer.weapon} beats #{player.weapon}"
    else
      "#{player.name.capitalize} Wins! #{player.weapon} beats #{computer.weapon}"
    end
  end

  def player_points
    check_player_points
    return self.player.points
  end

  def computer_points
    check_computer_points
    return self.computer.points
  end

  private

  attr_reader :player_class, :computer_class

  def check_player_points
    if player.weapon == computer.weapon
      @player.points += 0
    elsif player.weapon == win_states[computer.weapon.to_sym]
      @player.points += 0
    else
      @player.points += 1
    end
  end

  def check_computer_points
    if player.weapon == computer.weapon
      @computer.points += 0
    elsif player.weapon == win_states[computer.weapon.to_sym]
      @computer.points += 1
    else
      @computer.points += 0
    end
  end

end
