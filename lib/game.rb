class Game

  def self.create(player1, player2 = Player.new("Computer"))
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
  end

  attr_reader :player1, :player2

  # This method looks at the indexes of player choices
  # in relation to the CHOICES array in Player class
  # You lose if your opponent's choice is to the right or 3 right of yours
  # And you win if your opponent's choice is to the left or 3 left of yours
  def winner
    p1_index = Player::CHOICES.index(@player1.choice)
    p2_index = Player::CHOICES.index(@player2.choice)
    return nil if p1_index == p2_index
    return @player2 if ((p1_index + 1) % 5) == (p2_index % 5)
    return @player2 if ((p1_index + 3) % 5) == (p2_index % 5)
    @player1
  end

  def loser
    p1_index = Player::CHOICES.index(@player1.choice)
    p2_index = Player::CHOICES.index(@player2.choice)
    return nil if p1_index == p2_index
    return @player1 if ((p1_index + 1) % 5) == (p2_index % 5)
    return @player1 if ((p1_index + 3) % 5) == (p2_index % 5)
    @player2
  end

  def tie_game?
    @player1.choice == @player2.choice
  end
end
