class Game

  attr_reader :player1, :player2, :rules, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @rules = {rock: :scissors,
              paper: :rock,
              scissors: :paper}
    @winner = nil
  end

  def outcome
    @winner = nil
    draw ? @winner = 'draw' : who_won
  end

  private

  def draw
    player1.choice == player2.choice
  end

  def who_won
    rules.each do |k,v|
      @winner = @player1.name if @player1.choice == k && @player2.choice == v
    end
    @winner == nil ? @winner = @player2.name : nil
  end

end
