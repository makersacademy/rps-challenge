class Game

  attr_reader :player, :computer

  def initialize (player, computer)
    @player = player
    @computer = computer
  end

  def result(moves)
    case moves
      when ['ROCK', 'ROCK'], ['SCISSORS', 'SCISSORS'], ['PAPER', 'PAPER']
        'Tie'
      when ['ROCK','SCISSORS'], ['SCISSORS', 'PAPER'], ['PAPER', 'ROCK']
        'Player wins'
      when ['ROCK', 'PAPER'], ['PAPER', 'SCISSORS'], ['SCISSORS', 'ROCK']
        'Computer wins'
    end
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

end
