class Rules

  attr_reader :choices

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

end