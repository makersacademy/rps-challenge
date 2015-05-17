class RPS
  attr_reader :rules

  def initialize
    @rules = {
      rock: [:scissors, :lizard],
      paper: [:spock, :rock],
      scissors: [:paper, :lizard],
      lizard: [:spock, :paper],
      spock: [:scissors, :rock]
    }
  end

  def results(p1, mode = :rps)
    p2 = random(mode)
    if p1 == p2
      result = :tie
    elsif rules[p1].include? p2
      result = :win
    else
      result = :lose
    end
    { cpu_choice: p2, result: result }
  end

  def random(mode)
    n = 3 if mode == :rps
    n = 5 if mode == :rpsls
    options = [:rock, :paper, :scissors, :lizard, :spock]
    options[rand(n)]
  end
end
