class Game

  POSSIBLE_MOVES = [:rock, :paper, :scissors, :lizard, :spock]
  ROCK_HASH= {:paper => "PAPER WINS", :scissors => "ROCK WINS", :rock => "DRAW", :lizard => "ROCK WINS", :spock => "SPOCK WINS"}
  PAPER_HASH = {:paper => "DRAW", :scissors => "SCISSORS WIN", :rock => "PAPER WINS", :lizard => "LIZARD WINS", :spock => "PAPER WINS"}
  SCISSORS_HASH = {:paper => "SCISSORS WIN", :scissors => "DRAW", :rock => "ROCK WINS", :lizard => "SCISSORS WIN", :spock => "SPOCK WINS" }
  SPOCK_HASH = {:paper => "PAPER WINS", :scissors => "SPOCK WINS", :rock => "SPOCK WINS", :lizard => "LIZARD WINS", :spock => "DRAW"}
  LIZARD_HASH = {:paper => "LIZARD WINS", :scissors => "SCISSORS WIN", :rock => "ROCK WINS", :lizard => "DRAW", :spock => "LIZARD WINS"}

  def result player1_move, player2_move
    result = move_to_constant(player1_move)[player2_move.to_sym]
    "#{result}"
  end

  private

  def move_to_constant player1_move
    string = "#{player1_move}" + "_hash"
    x = Game.const_get string.upcase
  end


end
