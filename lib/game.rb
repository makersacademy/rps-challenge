class Game

  attr_reader :player1, :player2, :current_turn, :off_turn, :choices

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @current_turn = @player1
    @off_turn = @player2
    @choices = []
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

  def winner
    if @choices[0] == "Rock" && @choices[1] == "Rock"
      "Draw, click to play again"
    elsif @choices[0] == "Rock" && @choices[1] == "Paper"
      "#{@player2.name} wins!"
    elsif @choices[0] == "Rock" && @choices[1] == "Scissors"
      "#{@player1.name} wins!"
    elsif @choices[0] == "Paper" && @choices[1] == "Paper"
      "Draw, click to play again"
    elsif @choices[0] == "Paper" && @choices[1] == "Scissors"
      "#{@player2.name} wins!"
    elsif @choices[0] == "Paper" && @choices[1] == "Rock"
      "#{@player1.name} wins!"
    elsif @choices[0] == "Scissors" && @choices[1] == "Scissors"
      "Draw, click to play again"
    elsif @choices[0] == "Scissors" && @choices[1] == "Rock"
      "#{@player2.name} wins!"
    elsif @choices[0] == "Scissors" && @choices[1] == "Paper"
      "#{@player1.name} wins!"
    end
  end

end