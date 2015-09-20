class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def challenge
    choice1 = player1.current_selection
    choice2 = player2.current_selection
    fail "Both players must choose their weapon" if choice1.nil? || choice2.nil?
    if choice1.beats?(choice2)
      "#{player1.name} wins the game!"
    elsif choice2.beats?(choice1)
      "#{player2.name} wins the game!"
    else
      "Same choice, draw."
    end
  end

end