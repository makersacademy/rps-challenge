class Game

  attr_reader :player1, :player2, :rpssl
  attr_accessor :player_1_move, :player_2_move

  def initialize(rpssl, player1, player2 = "Computer")
    @rpssl = rpssl
    @player1 = player1
    @player2 = player2
    @win = { "Rock" => ["Scissors", "Lizard"],
       "Paper" => ["Rock", "Spock"],
       "Scissors" => ["Paper", "Lizard"],
       "Spock" => ["Rock", "Scissors"],
       "Lizard" => ["Paper", "Spock"] }
  end

  def result_string
    who = result
    return "draw" if who == "none"
    return "#{player1} won" if who == "player1"
    return "#{player2} won" if who == "player2"
  end

  private

  def random_move
    return ["Rock", "Paper", "Scissors"].sample if @rpssl == "false"
    
    ["Rock", "Paper", "Scissors", "Spock", "Lizard"].sample
  end

  def result
    @player_2_move ||= random_move
    return "none" if @player_1_move == @player_2_move
    return "player1" if @win[@player_1_move].include?(@player_2_move)
    return "player2" if @win[@player_2_move].include?(@player_1_move)
  end

end
