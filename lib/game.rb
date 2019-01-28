class Game

  attr_reader :player_1
  attr_accessor :computer_choice

  def initialize(player_1, computer_choice = nil)
    @player_1 = player_1
    @computer_choice = computer_choice
  end

  def computer_play
    set_computer_choice
    result
  end

  def set_computer_choice
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
  end

  def result
    @player_1.choice == "Rock" ? check_rock : @player_1.choice == "Paper" ?
    check_paper : check_scissors
  end

  def check_rock
    comp = @computer_choice
    comp == "Rock" ? "draw" : comp == "Paper" ? "lose" : "win"
  end

  def check_paper
    comp = @computer_choice
    comp == "Rock" ? "win" : comp == "Paper" ? "draw" : "lose"
  end

  def check_scissors
    comp = @computer_choice
    comp == "Rock" ? "lose" : comp == "Paper" ? "win" : "draw"
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end
end
