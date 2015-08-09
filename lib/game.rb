require './lib/player'

class Game

  attr_reader :player, :choices

  def initialize
    @choices = [ :rock, :scissors, :paper]
  end

  def beat element1, element2
      raise 'No such element in the rules' if @choices.include?(element1) == false || @choices.include?(element2)== false

      return true if element1 == :rock && element2 == :scissors
      return nil if element1 == :rock && element2 == :rock
      return false if element1 == :rock && element2 == :paper

      return true if element1 == :paper && element2 == :rock
      return nil if element1 == :paper && element2 == :paper
      return false if element1 == :paper && element2 == :scissors

      return true if element1 == :scissors && element2 == :paper
      return nil if element1 == :scissors && element2 == :scissors
      return false if element1 == :scissors && element2 == :rock

    end

  def set_player player
   @player = player
  end

  def play element
   raise 'You need to set a player to play this game' if @player == nil
   @player.chooses(element.to_sym)
   beat element, self.computer
  end

  def computer
    return [ :rock, :scissors, :paper].sample
  end

end