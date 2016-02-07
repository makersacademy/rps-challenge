require_relative './player.rb'

class Game

  attr_reader :player, :ai

  def initialize(player = Player.new, ai = Player.new)
    @player = player
    @ai = ai
  end

  def ai_chooses
    @ai.reset
    @ai.send("choose_" + random_weapon)
  end

  def winner
    choose_winner
  end

  private

  def choose_winner
    if paper_v_rock || rock_v_scissors || scissors_v_paper
      @winner = @player.name
    elsif @player.selection == @ai.selection
      @winner = nil
    else
      @winner = @ai.name
    end
  end

  def random_weapon
    ["rock", "scissors", "paper"].sample
  end

  def paper_v_rock
    @player.selection == :paper && @ai.selection == :rock
  end

  def rock_v_scissors
    @player.selection == :rock && @ai.selection == :scissors
  end

  def scissors_v_paper
    @player.selection == :scissors && @ai.selection == :paper
  end

end
