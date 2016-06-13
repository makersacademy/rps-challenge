class ResultCalculator

  attr_reader :p1_hand, :p2_hand

  def initialize(p1_hand = nil, p2_hand = nil)
    @p1_hand = p1_hand
    @p2_hand = p2_hand
  end

  def player1_wins?
    if p1_hand == p2_hand
      'Draw'
    else
      (p1_hand=='Spock' && p2_hand=='Rock') ||
      (p1_hand=='Spock' && p2_hand=='Scissors') ||
      (p1_hand=='Lizard' && p2_hand=='Paper') ||
      (p1_hand=='Lizard' && p2_hand=='Spock') ||
      (p1_hand=='Scissors' && p2_hand=='Paper') ||
      (p1_hand=='Scissors' && p2_hand=='Lizard') ||
      (p1_hand=='Paper' && p2_hand=='Rock') ||
      (p1_hand=='Paper' && p2_hand=='Spock') ||
      (p1_hand=='Rock' && p2_hand=='Scissors') ||
      (p1_hand=='Rock' && p2_hand=='Lizard')
    end
  end
end
