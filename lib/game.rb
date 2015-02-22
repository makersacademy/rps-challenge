require_relative './player'

class Game

  attr_accessor :player 


  def initialize
    player = nil
    @combinations = {:rock => :paper, :scissor => :rock, :paper => :scissor}
  end

  def add(player)
    self.player = player
  end

  def ready?
    has_a_player?
  end

  def get_choice(choice,player)
    player.choice = choice
  end

  def winner?(player_choice,rand_choice)
    if @combinations[rand_choice] == player_choice
      :win
    elsif rand_choice == player_choice
      :draw
    else
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