class Game
  MOVE_SELECTION = ['Scissors', 'Rock', 'Paper']
  attr_reader :player_name, :player_move, :computer_move

  def initialize(player_name)
    @player_name = player_name
    @player_move = nil
    @computer_move = nil
  end

  def computer_attack
    @computer_move = MOVE_SELECTION[Kernel.rand(2)]
  end

  def player_attack(player_move)
    @player_move = player_move
  end

  def winner
    return "Draw!" if draw?
    player_wins? ? "#{@player_name} wins!" : 'Computer wins!'
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  # Big props to Arif for the private method suggestions
  private

  def player_wins?
    win_with_paper? || win_with_rock? || win_with_scissors?
  end

  def win_with_rock?
    player_move == 'Rock' && computer_move == 'Scissors'
  end

  def win_with_scissors?
    player_move == 'Scissors' && computer_move == 'Paper'
  end

  def win_with_paper?
    player_move == 'Paper' && computer_move == 'Rock'
  end

  def draw?
    player_move == computer_move
  end
end