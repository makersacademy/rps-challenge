require './lib/player'

class Game

  attr_reader :player1, :player2, :choices

  def initialize
    @choices = [ :rock, :scissors, :paper]
    @player1 = nil
    @player2 = nil
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
    if @player1
      @player2 = player
    else
      @player1 = player
    end
  end

  def play element1, element2
     if @player1 == nil || @player2 == nil
      raise 'You need to set two players to play this game'
    else
      @player1.chooses(element1)
      @player2.chooses(element2)
      beat element1, element2
    end
  end

  def computer
    return [ :rock, :scissors, :paper].sample
  end

end