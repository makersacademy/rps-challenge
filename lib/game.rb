require_relative 'computer_player'

class Game
  def initialize
    @trumps_rps = { :rock => :scissors, :paper => :rock, :scissors => :paper }
    @trumps_rpsls = { :scissors => [:paper, :lizard], :paper => [:spock, :rock], :rock => [:scissors, :lizard], :lizard => [:paper, :spock], :spock => [:rock, :scissors] }
  end

  def result_rps(choice1, choice2)
    return :win if @trumps_rps[choice1] == choice2
    return :lose if @trumps_rps[choice2] == choice1
    return :draw if choice1 == choice2
  end

  def result_rpsls(choice1, choice2)
    return :win if @trumps_rpsls[choice1].include?(choice2)
    return :lose if @trumps_rpsls[choice2].include?(choice1)
    return :draw if choice1 == choice2
  end
end