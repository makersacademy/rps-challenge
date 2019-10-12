require_relative 'computer'
require_relative 'player'

class Winner

  MOVES = ['Rock', 'Paper', 'Scissors']

  def self.create(player_1, player_2 = Computer.new)
    @winner = Winner.new(player_1, player_2)
  end

  def self.instance
    @winner
  end

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    a = MOVES.index(@player_1.choice)
    b = MOVES.index(@player_2.choice)
    if a == b
      "It's a draw!"
    elsif ((a - b + 3) % 3) == 1
      "#{@player_1.name} wins!"
    else
      "#{@player_2.name} wins!"
    end
  end

  def player_1_choice(choice)
    @player_1.choose(choice, MOVES)
  end

  def player_2_choice(choice)
    @player_2.choose(choice, MOVES)
  end

end
