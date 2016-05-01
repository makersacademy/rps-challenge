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
    p2_choice = {0 => 'Scissors', 1 => 'Paper', 2 => 'Rock',
                  3 => 'Lizard', 4 => 'Spock'}
    p2_choice[random]
  end

  def winner(p1, p2)
    rps_hash = {}
    rps_hash['Scissors'] = ['Paper', 'Lizard']
    rps_hash['Paper'] = ['Rock', 'Spock']
    rps_hash['Rock'] = ['Scissors', 'Lizard']
    rps_hash['Spock'] = ['Scissors', 'Rock']
    rps_hash['Lizard'] = ['Paper', 'Spock']

    if p1 == p2
      [p1, p1]
    elsif rps_hash[p1].include? p2
      [p1, p2]
    else
      [p2, p1]
    end
  end
end
