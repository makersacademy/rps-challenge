class Round

  attr_reader :p1, :p2, :winner


  WINNERS = {:paper => [:rock, :spock], :scissors => [:paper, :lizard], :rock => [:lizard, :scissors], :lizard => [:spock, :paper], :spock => [:rock, :scissors]}

  def initialize(player_1, player_2)
    @p1 = player_1
    @p2 = player_2
    @winner = nil
  end

  def message
    return "Draw!  Both sides chose #{@p1.selection}" if draw?
    return "#{@winner.name} wins with #{@winner.selection.capitalize}!"
  end

  def draw?
    @p1.selection == @p2.selection
  end

  def find_winner
    @winner = @p1 if WINNERS[@p1.selection].include?(@p2.selection)
    @winner = @p2 if WINNERS[@p2.selection].include?(@p1.selection)
  end
end