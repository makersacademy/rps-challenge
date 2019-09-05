class Game

  attr_reader :player1, :player2, :current_turn, :off_turn, :choices

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @current_turn = @player1
    @off_turn = @player2
    @choices = [nil,nil]
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

  def both_turns_complete?
    @choices.length == 2
  end

end