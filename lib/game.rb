class Game

  attr_reader :player1, :player2, :rules, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @rules = {rock: 'scissors',
              paper: 'rock',
              scissors: 'paper'}
    @winner = nil
  end

  def who_won
    draw ? @winner = 'draw' : outcome
  end

  private

  def draw
    player1.choice == player2.choice
  end

  def outcome
    rules.each do |k,v|
     @player1.choice == k && @player2.choice == v ? @winner = @player2 : @winner = @player1
    end
  end
end
