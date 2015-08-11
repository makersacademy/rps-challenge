require './lib/player'

class Game

  attr_reader :player, :choices

  def initialize
    @choices = [ :rock, :scissors, :paper]
  end

  def beat element1, element2
    raise 'No such element in the rules' if @choices.include?(element1.to_sym) == false || @choices.include?(element2.to_sym)== false

     if element1 == element2
      return "draw"
     elsif
        (element1 == :rock && element2 == :scissors)|| (element1 == :paper && element2 == :rock) || (element1 == :scissors && element2 == :paper)
        return "won"
      else
        return "lost"
      end
   end

  def set_player player
   @player = player
  end

  def play element
   raise 'You need to set a player to play this game' if @player == nil
   @player.chooses(element)
   beat element, self.computer
  end

  def computer
    return [ :rock, :scissors, :paper].sample
  end

end