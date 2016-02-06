class Game

  MOVES = ['Rock','Scissors','Paper']
  RULES = {"Rock" => "Scissors", 'Scissors'=> 'Paper', 'Paper'=>'Rock'}

  attr_reader :player1, :player2

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end
  #TODO - added two arguments here using *
  def make_moves(player_1_move, *args)
    player1.make_move(player_1_move)
    player2.make_move(args[0])
  end

  def two_player
    @two_players = true
  end

  def multiplayer?
    @two_players
  end

  def outcome
    return :win if RULES[player1.move] == player2.move
    return :draw if player1.move == player2.move
    return :lose if RULES[player2.move] == player1.move
  end

end
