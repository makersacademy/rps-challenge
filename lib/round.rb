require_relative 'player'

class Round
  attr_reader :player1, :player2, :players

  def self.create(player, computer = Player.new )
    @round = Round.new(player, computer)
  end

  def self.instance
    @round
  end

  def winner
    return "no one, it's a tie" if @player1.choice == @player2.choice
    evaluate_win
  end


  private
  attr_accessor :first, :second

  def evaluate_win
    get_attacks
    return @player1 if (first == second + 1 || first == 0 && second == 2)
    @player2
  end

  def get_attacks
    @first = Player::ATTACKS.index(@player1.choice)
    @second = Player::ATTACKS.index(@player2.choice)
  end

  def initialize(player, computer = Player.new)
    @players = [@player1 = player, @player2 = computer]
  end

end
