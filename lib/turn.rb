class Turn

RPS = { Scissors: [:Paper, :Lizard],
          Paper: [:Rock, :Spock],
          Rock: [:Scissors, :Lizard],
          Lizard: [:Paper, :Spock],
          Spock: [:Rock, :Scissors] }

P2_CHOICE = {0 => :Scissors, 1 => :Paper, 2 => :Rock,
                        3 => :Lizard, 4 => :Spock}

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
