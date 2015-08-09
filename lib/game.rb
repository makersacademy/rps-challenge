require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize(playerClass)
    @player_1 = initialize_player playerClass
    @player_2 = initialize_player playerClass

    player_1.opponent = player_2
    player_2.opponent = player_1
  end

  def initialize_player(playerClass)
    player = playerClass.new
    player
  end

  def play
    fail 'Player has not picked a hand to play!' unless self.player_1.chosen_hand? && self.player_2.chosen_hand?

    if (self.player_1.hand == 'rock') && (self.player_2.hand == 'scissors')
      return  "#{self.player_1.name} wins!"
      self.player_1.winner = true
    elsif (self.player_1.hand == 'rock') && (self.player_2.hand == 'paper')
      return  "#{self.player_2.name} wins!"
      self.player_2.winner = true
    elsif (self.player_1.hand == 'rock') && (self.player_2.hand == 'rock')
      return  "It's a tie!"
    elsif (self.player_1.hand == 'scissors') && (self.player_2.hand == 'paper')
      return  "#{self.player_1.name} wins!"
      self.player_1.winner = true
    elsif (self.player_1.hand == 'scissors') && (self.player_2.hand == 'rock')
      return  "#{self.player_2.name} wins!"
      self.player_2.winner = true
    elsif (self.player_1.hand == 'scissors') && (self.player_2.hand == 'scissors')
      return  "It's a tie!"
    elsif (self.player_1.hand == 'paper') && (self.player_2.hand == 'rock')
      return  "#{self.player_1.name} wins!"
      self.player_1.winner = true
    elsif (self.player_1.hand == 'paper') && (self.player_2.hand == 'scissors')
      return  "#{self.player_2.name} wins!"
      self.player_2.winner = true
    elsif (self.player_1.hand == 'paper') && (self.player_2.hand == 'paper')
      return  "It's a tie!"
    end
  end

  private

  def players
    [player_1, player_2]
  end

end
