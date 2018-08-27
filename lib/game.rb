class Game

attr_reader :player

  def initialize(player)
    @player = player
    # needed?
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def ai_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end

  # def resolution_message(choice1, choice2)
  #   who_wins(choice1, choice2) == 'ai' ? "You lose!" : "You win!"
  # end

  def who_wins(choice1, choice2)
    return 'You win!' if choice1 == 'Scissors' && choice2 == 'Paper'
    return 'You win!' if choice1 == 'Paper' && choice2 == 'Rock'
    return 'You win!' if choice1 == 'Rock' && choice2 == 'Scissors'
    return 'It\'s a draw!' if choice1 == choice2
  'You lose!'
  end
end
