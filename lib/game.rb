require_relative './player'

class Game

  attr_accessor :player
  attr_reader :computer_score, :player_score 


  def initialize
    player = nil
    @combinations = {rock: :paper, scissor: :rock, paper: :scissor}
    @computer_score = 0
    @player_score = 0  
  end

  def add(player)
    self.player = player
  end

  def ready?
    has_a_player?
  end

  def winner?(player_choice,rand_choice)
    if @combinations[rand_choice] == player_choice
      @player_score =+ 1
      :win
    elsif rand_choice == player_choice
      :draw
    else
      @computer_score =+ 1
      :lose
    end
  end

  def get_random_choice
    @combinations.keys.sample
  end

  private

  def has_a_player?
    !player.nil?
  end

end