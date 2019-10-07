require_relative './judge.rb'

class Declare
  attr_reader :winner, :winning_move

  def initialize(p1, p1_choice, p2 = "Computer", p2_choice = ["Rock", "Paper", "Scissors"][rand(3)])
    @p1 = p1
    @p1_choice = p1_choice
    @p2 = p2
    @p2_choice = p2_choice
    @winner = Judge.new(p1, p1_choice, p2, p2_choice).judgement
    @winning_move = return_winning_move
  end

  def draw?
    p1_choice == p2_choice
  end

  private

  attr_reader :p1, :p1_choice, :p2, :p2_choice

  def return_winning_move
    case winner
    when p1
      p1_choice
    when p2
      p2_choice
    end
  end
end
