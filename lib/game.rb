
class Game

  attr_reader :player1, :player2, :players

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def add(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
  end

  def play_vs_comp(move)
    player1.move(move)
    player2.rand_move
  end

  def p1_move
    @player1.current_move
  end

  def p2_move
    @player2.current_move
  end

  def tie?
    p1_move == p2_move
  end

  def win
    return "It's a draw, everyone wins." if tie?

    case @player1.current_move
    when 'Paper'
      return print_winner(@player1) if p2_move == 'Rock'
      print_winner(@player2) if p2_move == 'Scissors'
    when 'Rock'
      return print_winner(@player1) if p2_move == 'Scissors'
      print_winner(@player2) if p2_move == 'Paper'
    when 'Scissors'
      return print_winner(@player1) if p2_move == 'Paper'
      print_winner(@player2) if p2_move == 'Rock'
    end
  end

  private

  def print_winner(player)
    "#{player.name} is the victor!"
  end
end
