require_relative 'player'

class Game

  attr_reader :player, :winner

  def initialize(player)
    @player = player
    @winner = nil
  end

  def comp_select
    ["rock", "paper", "scissors"].sample
  end

  def compare_rock
    if comp_select == "rock"
      @winner = "draw"
    elsif comp_select == "paper"
      @winner = player
    elsif comp_select == "scissors"
      @winner = "computer"
    end
  end

  def compare_paper
    if comp_select == "paper"
      @winner = "draw"
    elsif comp_select == "rock"
      @winner = player
    elsif comp_select == "scissors"
      @winner = "computer"
    end
  end

  def compare_scissors
    if comp_select == "scissors"
      @winner = "draw"
    elsif comp_select == "paper"
      @winner = "player"
    elsif comp_select == "rock"
      @winner = "computer"
    end
  end

end
