class Round

  attr_reader :p1, :p2


  WINNERS = {'Rock' => 'Scissors','Paper' => 'Rock', 'Scissors' => 'Paper'}

  def initialize(player_1, player_2)
    @p1 = player_1
    @p2 = player_2
  end

  def round_number
    @@round_number
  end

  def message
    return "Draw!  Both sides chose #{@p1.selection}" if draw?
    return "#{winner.name} wins with #{winner.selection}!"
  end

  def draw?
    @p1.selection == @p2.selection
  end

  def winner
    return @p1 if WINNERS[@p1.selection] == @p2.selection
    return @p2 if WINNERS[@p2.selection] == @p1.selection
  end

end