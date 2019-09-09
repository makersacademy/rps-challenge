class Game

  attr_reader :player1, :player2, :current_turn, :off_turn, :choices

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @current_turn = @player1
    @choices = []
    @choice_hash = { "Rock" => 1, "Paper" => 2, "Scissors" => 3,
     "Spock" => 4, "Lizard" => 5 }
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def switch_turn
    if @current_turn == @player1
      @current_turn = @player2
    else
      @current_turn = @player1
    end
  end

  def both_turns_complete?
    @choices.length.even? && @choices != 0
  end

  def winner
    case (@choice_hash[@choices[-1]] - @choice_hash[@choices[-2]]) % 5
    when 0
      "Draw, both players chose #{@choices[-1]}... click to play again!"
    when 1, 3
      "#{@choices[-1]} beats #{@choices[-2]}...#{@player2.name} wins!"
    when 2, 4
      "#{@choices[-2]} beats #{@choices[-1]}...#{@player1.name} wins!"
    end
  end

end
