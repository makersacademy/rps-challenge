class Game

  attr_reader :player, :choice

  def initialize(player)
    @player = player
    @result = nil
    @choice = nil
  end

  def self.new_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def pick_option
    num = Kernel.rand(1..3)
    @choice = 'Rock' if num == 1
    @choice = 'Paper' if num == 2
    @choice = 'Scissors' if num == 3
  end

  def result
    calculate_outcome
    @result
  end

  private
  def calculate_outcome
    @result = 'tie' if @player.choice == choice
    compare_when_player_picks_rock
    compare_when_player_picks_paper
    compare_when_player_picks_scissors
  end

  def compare_when_player_picks_rock
    @result = 'win' if @player.choice == "Rock" and choice == "Paper"
    @result = 'lose' if @player.choice == "Rock" and choice == "Scissors"
  end

  def compare_when_player_picks_paper
    @result = 'win' if @player.choice == "Paper" and choice == "Scissors"
    @result = 'lose' if @player.choice == "Paper" and choice == "Rock"
  end

  def compare_when_player_picks_scissors
    @result = 'win' if @player.choice == "Scissors" and choice == "Rock"
    @result = 'lose' if @player.choice == "Scissors" and choice == "Paper"
  end
end
