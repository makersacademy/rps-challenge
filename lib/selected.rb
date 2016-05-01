require_relative './player'
require_relative './computer'

class Selected
   attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer=Computer.new)
    @selected = Selected.new player, computer
  end

  def self.object
    @selected
  end

  def result
    if players_choice == "rock"
       player_chose_rock
    elsif players_choice == "paper"
       player_chose_paper
    elsif players_choice == "scissors"
       player_chose_scissors
    end
  end

  private

  def computers_choice
    @computer.chosen
  end

  def players_choice
    @player.selected
  end

  def player_chose_rock
    if computers_choice == "paper"
      return "lose"
    elsif computers_choice == "scissors"
      return "win"
    elsif computers_choice == "rock"
      "drew"
    end
  end

  def player_chose_paper
    if computers_choice == "scissors"
      return "lose"
    elsif computers_choice == "rock"
      return "win"
    elsif computers_choice == "paper"
      "drew"
    end
  end

  def player_chose_scissors
    if computers_choice == "rock"
      return "lose"
    elsif computers_choice == "paper"
      return "win"
    elsif computers_choice == "scissors"
      "drew"
    end
  end
end
