class Game

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game 
  end

  attr_reader :player, :winner, :computer_move

  MOVES = ['rock', 'paper', 'scissors']

  def initialize(player)
    @player = player
  end

  def computer_generator
    @computer_move = MOVES.sample
  end

  def select_winner(player_1: @player.move, computer: @computer_move)
    if player_1 == computer
      @winner = "No one"
    elsif player_1 == 'rock' && computer == 'paper'
      @winner = 'Player 2'
    elsif player_1 == 'rock' && computer == 'scissors'
      @winner = 'Player 1'
    elsif player_1 == 'scissors' && computer == 'rock'
      @winner = 'Player 2'
    elsif player_1 == 'scissors' && computer == 'paper'
      @winner = 'Player 1'
    elsif player_1 == 'paper' && computer == 'scissors'
      @winner = 'Player 2'
    elsif player_1 == 'paper' && computer == 'rock'
      @winner = 'Player 1'
    end
  end

end
