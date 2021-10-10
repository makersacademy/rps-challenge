class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def winner
    if @player1.action == @player2.action
      "draw"
    elsif @player1.action == "✊" && @player2.action == "✌"
      @player1
    elsif @player1.action == "✌" && @player2.action == "🖐️"
      @player1
    elsif @player1.action == "🖐️" && @player2.action == "✊"
      @player1
    else
      @player2
    end
  end
end
