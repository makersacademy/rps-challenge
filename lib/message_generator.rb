class MessageGenerator
  attr_reader :messages

  def initialize(winner, winning_move)
    @winner = winner
    @winning_move = winning_move
    @messages = []
  end

  def message
    case @winner
    when "player"
       @messages << "You win!"
    when "computer"
      @messages << "You lose!"
    when "draw"
      @messages << "It's a draw"
    end
    game_commentary
  end

  def game_commentary
    send(@winning_move)
  end

  def rock
    @messages << "Rock crushes scissors"
  end

  def paper
    @messages << "Paper covers rock"
  end

  def scissors
    @messages << "Scissors cut paper"
  end

  def draw
    @messages << "Stalemate!"
  end
end
