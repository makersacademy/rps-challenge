class MessageGenerator
  attr_reader :messages

  def initialize(winner)
    @winner = winner
    @winner == "draw" ? @winning_move = "draw" : @winning_move = @winner.move
    @messages = []
  end

  def message
    if @winner == "draw"
      @messages << "It's a draw"
    else
      @messages << "#{@winner.name} wins!"
    end
    game_commentary
  end

  def game_commentary
    @messages <<  send(@winning_move)
  end

  def rock
    "Rock crushes scissors"
  end

  def paper
    "Paper covers rock"
  end

  def scissors
    "Scissors cut paper"
  end

  def draw
    "Stalemate!"
  end
end
