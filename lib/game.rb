class Game

  attr_reader :opponent
  attr_accessor :player

  def initialize(player, opponent=Computer.new)
    @opponent = opponent
    @player = player
  end

  def winner
    ["The winner is #{@player.name}!", "The winner is the Computer!", "It's a Tie!"][calculate_result(@player, @opponent)]
  end

  private

  def calculate_result(player, opponent)
    result = (player.weapon.retrieve_value - opponent.opponents_weapon.retrieve_value)
    if [-2, 1].include?(result)
      return 0
    elsif [-1, 2].include?(result)
      return 1
    else
      return 2
    end
  end
end