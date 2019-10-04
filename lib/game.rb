class Game

  attr_reader :game_mode, :player1, :player2


  def initialize(game_mode = 'sp')
    @game_mode = game_mode
  end

  def self.create(game_mode = 'sp')
    @game = Game.new(game_mode)
  end

  def self.instance
    @game
  end

  def add_player(player1,player2)
    @player1 = player1
    @player2 = player2
  end

  def play_vs_pc(move1)
    @player1.chosen_move(move1)
    @player2.random_move
    p p1move
  end

  def p1move
    @player1.current_move
  end

  def p2move
    @player2.current_move
  end

  def tie?
    p1move == p2move
  end

  def print_winner(player)
    return "WINNER IS #{player.name}!!"
  end


  def winner
    return "NO WINNER, BOTH PLAYED: #{p1move}" if tie?
    case @player1.current_move
    when "ROCK"
      return print_winner(@player1) if @player2.current_move == "SCISSORS"
      return print_winner(@player2) if @player2.current_move == "PAPER"
    when "SCISSORS"
      return print_winner(@player1) if @player2.current_move == "PAPER"
      return print_winner(@player2) if @player2.current_move == "ROCK"
    when "PAPER"
      return print_winner(@player1) if @player2.current_move == "ROCK"
      return print_winner(@player2) if @player2.current_move == "SCISSORS"
    end
    @player1.reset
    @player2.reset
  end


end
