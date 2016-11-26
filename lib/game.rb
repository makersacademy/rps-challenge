require_relative 'player'
require_relative 'computer'

class Game
  @game_master = nil
  attr_reader :player, :computer, :player_choice, :computer_choice, :victor

  def initialize(player, computer)
    @player = player
    @computer = computer
    @player_choice = nil
    @computer_choice = nil
    @victor = nil
  end

  def self.create(player, computer)
    @game_master = Game.new(player, computer)
  end

  def self.instance
    @game_master
  end

  def rock
    @player_choice = player.rock
  end

  def paper
    @player_choice = player.paper
  end

  def scissors
    @player_choice = player.scissors
  end

  def computer_turn
    computer.pick_one
    @computer_choice = computer.final_choice
  end

  def determine_winner
    rock_beats_scissors?
    scissors_beat_paper?
    paper_beats_rock?
  end

  private
  attr_writer :victor
  def rock_beats_scissors?
    self.victor = self.player if self.player_choice == "Rock" && self.computer_choice == "Scissors"
    self.victor = self.computer if self.player_choice == "Scissors" && self.computer_choice == "Rock"
  end

  def scissors_beat_paper?
    self.victor = self.player if self.player_choice == "Scissors" && self.computer_choice == "Paper"
    self.victor = self.computer if self.player_choice == "Paper" && self.computer_choice == "Scissors"
  end

  def paper_beats_rock?
    self.victor = self.player if self.player_choice == "Paper" && self.computer_choice == "Rock"
    self.victor = self.computer if self.player_choice == "Rock" && self.computer_choice == "Paper"
  end
end
