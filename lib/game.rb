class Game

  attr_reader :player, :comp_move, :computer, :player_move
  attr_accessor :winner, :comp_score
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
        @comp_score += 1
        @winner = @computer + " WON"
      elsif (@comp_move == 'ROCK') && (@player_move == 'PAPER')
        @player.score += 1
        @winner = @player.name + " WON"
      elsif @comp_move == 'PAPER' && (@player_move == 'SCISSORS')
        @player.score += 1
        @winner = @player.name + " WON"
      elsif (@comp_move == 'PAPER') && (@player_move == 'ROCK')
        @comp_score += 1
        @winner = @computer + " WON"
      elsif (@comp_move == 'SCISSORS') && (@player_move == 'ROCK')
        @player.score += 1
        @winner = @player.name + " WON"
      elsif (@comp_move == 'SCISSORS') && (@player_move == 'PAPER')
        @comp_score += 1
        @winner = @computer + " WON"
      else @comp_move == @player_move
        @winner = "TIE"
      end
    end
end
