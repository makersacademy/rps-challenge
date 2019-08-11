class Game
  attr_reader :name, :total_wins, :total_draws, :total_losses
  attr_accessor :player_choice, :opponent_choice
  SELECTION = [:Rock, :Paper, :Scissors]

  def initialize(name)
    @name = name
    @total_wins = 0
    @total_draws = 0
    @total_losses = 0
    @player_choice = nil
    @opponent_choice = nil
  end

  def self.create(name)
    @game = Game.new(name)
  end
  
  def self.instance
    @game
  end

  def random_choice
    @opponent_choice = SELECTION.sample
    @opponent_choice
  end

  def winner?
    if draw?
      @total_draws += 1
      "You Draw!"
    elsif win?
      @total_wins += 1
      "You Win!"
    else
      @total_losses += 1
      "You Lose!"
    end
  end

  private

  def draw?
    @player_choice == @opponent_choice
  end

  def win?
    if @player_choice == :Rock && @opponent_choice == :Scissors
      true
    elsif @player_choice == :Scissors && @opponent_choice == :Paper
      true
    elsif @player_choice == :Paper && @opponent_choice == :Rock
      true
    else
      false
    end
  end
end
