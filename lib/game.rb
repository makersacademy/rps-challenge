class Game

  attr_reader :player1, :player2, :current_turn, :off_turn

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @current_turn = @player1
    @off_turn = @player2
  end

  def self.create(player1,player2)
    @game = Game.new(player1,player2)
  end

  def self.instance
    @game
  end

  def switch_turn
    if @current_turn == @player1
      @current_turn = @player2
      @off_turn = @player1
    else
      @current_turn = @player1
      @off_turn = @player2
    end
  end



end