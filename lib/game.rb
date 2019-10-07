class Game

  attr_reader :player1, :player2

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
    @p1score = 0
    @p2score = 0
  end

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def winner
    win_condition
  end

  def player1_score
    @p1score
  end

  def player2_score
    @p2score
  end

  private

  def win_condition
    if @player1.final_move == @player2.final_move
      @p1score +=1
      @p2score +=1
      "Draw!"
    elsif @player1.final_move == 'rock' && @player2.final_move == 'scissors'
      @p1score +=1
      "#{@player1.name} wins!"
    elsif @player1.final_move == 'rock' && @player2.final_move == 'paper'
      @p2score +=1
      "#{@player2.name} wins!"
    elsif @player1.final_move == 'paper' && @player2.final_move == 'rock'
      @p1score += 1
      "#{@player1.name} wins!"
    elsif @player1.final_move == 'paper' && @player2.final_move == 'scissors'
      @p2score += 1
      "#{@player2.name} wins!"
    elsif @player1.final_move == 'scissors' && @player2.final_move == 'paper'
      @p1score += 1
      "#{@player1.name} wins!"
    elsif @player1.final_move == 'scissors' && @player2.final_move == 'rock'
      @p2score += 1
      "#{@player2.name} wins!"
    end
  end

end
