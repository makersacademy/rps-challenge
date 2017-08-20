class Match
  def initialize player_1, player_2
    @p1 = player_1
    @p2 = player_2
  end

  def winner
    return "No one" if @p1.choice == @p2.choice
    case [@p1.choice, @p2.choice]
    when ['rock', 'scissors'], ['scissors', 'paper'], ['paper', 'rock'],
      ['spock', 'rock'], ['spock', 'scissors'], ['lizard', 'spock'], ['paper', 'spock'],
      ['lizard', 'paper'], ['rock', 'lizard'], ['scissors', 'lizard']
      return @p1.name
    else
      return @p2.name
    end
  end
end

class Player
  def initialize name
    @name = name
  end
  attr_accessor :choice
  attr_reader :name

end
