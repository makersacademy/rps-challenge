class Game

attr_reader :player1, :player2

  def initialize(player1, player2 = Player.new)
    @player1 = player1
    @player2 = player2
    # needed?
    # could use *player2? that way it isnt created if not needed.
  end

  def self.create(player1, player2 = Player.new)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def ai_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def who_wins(choice1, choice2)
    return 'You win!' if choice1 == 'Scissors' && choice2 == 'Paper'
    return 'You win!' if choice1 == 'Paper' && choice2 == 'Rock'
    return 'You win!' if choice1 == 'Rock' && choice2 == 'Scissors'
    return 'It\'s a draw!' if choice1 == choice2
  'You lose!'
  end
end
