class Game

  attr_reader :player, :comp_move, :computer, :player_move, :comp_score
  attr_accessor :winner
  def initialize(player)
    @player = player
    @computer = "COMPUTER"
    @comp_move = nil
    @moves = ["ROCK", "PAPER", "SCISSORS"]
    @player_move = nil
    @winner = nil
    @comp_score = 0
  end

  def new_move(player_move)
    @player_move = player_move
    computer_move
    calc_winner
  end

  private
    def computer_move
      @comp_move = @moves.sample
    end

    def calc_winner
      if (@comp_move == "ROCK") && (@player_move == "SCISSORS")
        @winner = @computer
      elsif (@comp_move == 'ROCK') && (@player_move == 'PAPER')
        @winner = @player.name
      elsif @comp_move == 'PAPER' && (@player_move == 'SCISSORS')
        @winner = @player.name
      elsif (@comp_move == 'PAPER') && (@player_move == 'ROCK')
        @winner = @computer
      elsif (@comp_move == 'SCISSORS') && (@player_move == 'ROCK')
        @winner = @player.name
      elsif (@comp_move == 'SCISSORS') && (@player_move == 'PAPER')
        @winner = @computer
      else @comp_move == @player_move
        @winner = "TIE"
      end
    end
end
