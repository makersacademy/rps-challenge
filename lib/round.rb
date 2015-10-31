class Round

  attr_reader :p1, :p2


  WINNERS = {'Rock' => 'Scissors','Paper' => 'Rock', 'Scissors' => 'Paper'}

  def initialize(player_1, player_2)
    @p1 = player_1
    @p2 = player_2
    @draw = draw?
  end

  def round_number
    @@round_number
  end

  def find_winner
    return @p1.name if WINNERS[@p1.selection] == @p2.selection
    return @p2.name if WINNERS[@p2.selection] == @p1.selection
    return 'Draw' if draw?
  end

  def draw?
    @choice_1 == @choice_2
  end

end