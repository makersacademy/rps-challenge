require_relative 'player'
require_relative 'rps'
require_relative 'rpls'

class Game

  attr_reader :player_1, :player_2

  def initialize playerClass, version
    @player_1 = initialize_player playerClass
    @player_2 = initialize_player playerClass
    self.class.send(:include, version)

    player_1.opponent = player_2
    player_2.opponent = player_1
  end

  def initialize_player playerClass
    playerClass.new
  end

  def over?
    !player_1.choice.nil? and !player_1.opponent.choice.nil?
  end

  def won_lost_or_tied player
    fail 'You have to choose between rock, paper or scissors' unless player.choice
    fail 'Erm, you have no opponent :/' unless player.opponent
    fail 'Still waiting for your opponent to decide' unless player.opponent.choice
    
    if tied? player
      "You've tied"
    elsif winner? player
      "You won! :)"
    else
      "You lost :("
    end
  end

end
