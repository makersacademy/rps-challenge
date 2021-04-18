class Game
  attr_reader :player, :computer

  def initialize(player)
    @player = player
    @computer = Player.new('Computer')
  end
  
  def self.create(player)
    @game = Game.new(player)
  end
  
  def self.instance
    @game
  end

  def make_random_choice
    ['rock', 'paper', 'scissors'].sample
  end

  # no unit testing
  def outcome
    return "It's a draw" if draw?
    
    win? ? 'You win' : 'You loose'
  end

  private

  def draw?
    # draw only if both players choose same play option
    @player.play_option == @computer.play_option
  end

  def win?
    you = @player.play_option
    they = @computer.play_option
    # possible wins:
    a = you == 'rock' && they == 'scissors'
    b = you == 'paper' && they == 'rock'
    c = you == 'scissors' && they == 'paper'
    # true if any possible win happened
    a || b || c 
  end
end
