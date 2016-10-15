class Game

  attr_reader :player1, :player2, :player_1_tally, :player_2_tally, :game_history

  class << self
    attr_accessor :store
  end

  def initialize(name1, computer)
    @player1 = Player.new(name1)
    @player2 = Player.new(computer)
    @player_1_tally = 0
    @player_2_tally = 0
    @game_history = []
  end

  def declare_winner

    if @player1.selection == @player2.selection
      winner = "The game was a draw!"
    elsif @player1.selection == 'rock' && @player2.selecton == 'paper'
      winner = @player1.name
    elsif @player2.selection == 'rock' && @player1.selecton == 'paper'
      winner = @player2.name
    elsif @player1.selection == 'scissors' && @player2.selecton == 'paper'
      winner = @player1.name
    elsif @player2.selection == 'scissors' && @player1.selecton == 'paper'
      winner = @player2.name
    elsif @player2.selection == 'rock' && @player1.selecton == 'scissors'
      winner = @player2.name
    elsif @player1.selection == 'rock' && @player2.selecton == 'scissors'
      winner = @player1.name
    end
  end

end
