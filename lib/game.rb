class Game

  attr_reader :player, :comp_move, :computer

  def initialize(player)
    @player = player
    @player_move = nil
    @computer = "COMPUTER"
    @comp_move = nil
    @moves = ["rock", "paper", "scissors"]
  end

  def new_move(player_move)
    @player_move = player_move
    computer_move
  end

  private
    def computer_move
      @comp_move = @moves.sample
    end
end
