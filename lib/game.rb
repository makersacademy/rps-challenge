class Game

  attr_reader :rock_hash, :paper_hash, :scissors_hash

def initialize
  @rock_hash = {:paper => "PAPER WINS", :scissors => "ROCK WINS", :rock => "DRAW", :lizard => "ROCK WINS", :spock => "SPOCK WINS"}
  @paper_hash = {:paper => "DRAW", :scissors => "SCISSORS WIN", :rock => "PAPER WINS", :lizard => "LIZARD WINS", :spock => "PAPER WINS"}
  @scissors_hash = {:paper => "SCISSORS WIN", :scissors => "DRAW", :rock => "ROCK WINS", :lizard => "SCISSORS WIN", :spock => "SPOCK WINS" }
  @spock_hash = {:paper => "PAPER WINS", :scissors => "SPOCK WINS", :rock => "SPOCK WINS", :lizard => "LIZARD WINS", :spock => "DRAW"}
  @lizard_hash = {:paper => "LIZARD WINS", :scissors => "SCISSORS WIN", :rock => "ROCK WINS", :lizard => "DRAW", :spock => "LIZARD WINS"}
end

def result player1_move, player2_move
  if player1_move == 'rock'
    result = @rock_hash[player2_move.to_sym]
  elsif player1_move == 'paper'
    result = @paper_hash[player2_move.to_sym]
  elsif player1_move == 'scissors'
    result = @scissors_hash[player2_move.to_sym]
  elsif player1_move == 'spock'
    result = @spock_hash[player2_move.to_sym]
  else
    result = @lizard_hash[player2_move.to_sym]
  end
  "#{result}"
end

end
