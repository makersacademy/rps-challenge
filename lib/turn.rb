class Turn

RPS = { scissors: [:paper, :lizard],
          paper: [:rock, :spock],
          rock: [:scissors, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

P2_CHOICE = {0 => :scissors, 1 => :paper, 2 => :rock,
                        3 => :lizard, 4 => :spock}

  def result(p1, p2)
     p2 = p2_choice if p2.nil?
     winner(p1.to_sym, p2.to_sym)
  end

  private

  def random
    Kernel.rand(0..4)
  end

  def p2_choice
    P2_CHOICE[random]
  end

  def winner(p1, p2)
    if p1 == p2
      [p1, p1]
    elsif RPS[p1].include? p2
      [p1, p2]
    else
      [p2, p1]
    end
  end
end
