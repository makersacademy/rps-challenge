class Turn

  def result(p1, p2)
     p2 = p2_choice if p2.nil?
     winner(p1, p2)
  end

  private

  def random
    Kernel.rand(0..4)
  end

  def p2_choice
    p2_choice = {0 => 'scissors', 1 => 'paper', 2 => 'rock',
                  3 => 'lizard', 4 => 'spock'}
    p2_choice[random]
  end

  def winner(p1, p2)
    rps_hash = {}
    rps_hash['scissors'] = ['paper', 'lizard']
    rps_hash['paper'] = ['rock', 'spock']
    rps_hash['rock'] = ['scissors', 'lizard']
    rps_hash['spock'] = ['scissors', 'rock']
    rps_hash['lizard'] = ['paper', 'spock']

    if p1 == p2
      "Draw!"
    elsif rps_hash[p1].include? p2
      "Player1 won! #{p1} beats #{p2}"
    else
      "Player2 won! #{p2} beats #{p1}"
    end
  end
end
