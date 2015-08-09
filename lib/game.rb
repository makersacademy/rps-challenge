require_relative 'player'
require_relative 'computer_player'

class Game
  def initialize
    @trumps = { :rock => :scissors, :paper => :rock, :scissors => :paper }
  end

  def result(choice1, choice2)
    return :win if @trumps[choice1] == choice2
    return :lose if @trumps[choice2] == choice1
    return :draw if choice1 == choice2
  end
end