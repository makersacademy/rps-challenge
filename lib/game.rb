require_relative 'player'

class Game
  attr_reader :player1, :player2

  def self.create(player, computer = Player.new )
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def winner
    return "no one, it's a tie" if player1.choice == player2.choice
    evaluate_winner
  end

  private
  attr_accessor :first, :second

  def initialize(player, computer = Player.new)
    @player1 = player
    @player2 = computer
  end

  def update_attacks
    @first = Player::ATTACKS.index(player1.choice)
    @second = Player::ATTACKS.index(player2.choice)
  end

  def evaluate_winner
    update_attacks
    return player1 if first == second + 1 || second == 2
    player2
  end

end
