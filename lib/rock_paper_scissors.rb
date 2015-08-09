class Game
  attr_reader :user, :computer, :winner, :winning_pairs
  def initialize
    @winning_pairs = [[:Paper, :Rock],[:Scissors, :Paper],[:Rock, :Scissors]]
    @user
    @computer
    @winner
    @draw
  end

  def selection(choice)
    @user = choice.to_sym
  end

  def computer_choice
    @computer = [:Paper, :Scissors, :Rock].sample
  end

  def evaluate_game
    if @user == @computer
      return :draw
    end
    @winning_pairs.include?([@user, @computer]) ? @winner = true : @winner = false
  end
end
