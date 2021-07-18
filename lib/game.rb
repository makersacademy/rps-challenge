class Game

  MOVE = ['Rock', 'Paper', 'Scissors']

  def computer_move
    MOVE[Kernel.rand(2)]
  end

  def winner(player, computer)
    return 'Draw' if player == computer
    return 'You win!' if player == 'Scissors' && computer == 'Paper'
    return 'You win!' if player == 'Paper' && computer == 'Rock'
    return 'You win!' if player == 'Rock' && computer == 'Scissors'
    'Computer wins!'
  end

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  # rock beats scissors
  # scissors beats paper
  # paper beats rock

end
