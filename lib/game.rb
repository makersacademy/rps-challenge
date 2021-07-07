class Game
  attr_reader :players

  WINNER = { 'Scissors' => 'Paper', 'Paper' => 'Rock', 'Rock' => 'Scissors' }

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
    return 'No winner: you have to both choose!' if choice1.nil? || choice2.nil?
    if choice1 == choice2
      "It\'s a draw!"
    elsif WINNER[choice1] == choice2
      "Player 1 wins!"
    else
      "Player 2 wins!"
    end
  end
end
