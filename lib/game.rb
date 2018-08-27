class Game

attr_reader :players

  def initialize(player1, player2 = Player.new)
    @players = [player1, player2]
    # could use *player2? that way it isnt created if not needed.
  end

  def first_player
    players.first
  end

  def second_player
    players[1]
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

  # alter the wording of win/loss to include player 2
  # this can be done by making a new method
  # split method, one logic, other what it says if 1 or 2 players
end
