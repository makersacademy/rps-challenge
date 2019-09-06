class Game
  attr_reader :player, :computer_choice
  def initialize(player = nil)
    @player = player
    @computer_choice = ['Rock', 'Paper','Scissors'].sample
    @logic = [ {'Rock' => 'Scissors'}, {'Paper' => 'Rock'}, {'Scissors' => 'Paper'} ]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def outcome
    return 'Draw' if draw?()
    return 'WINNER!' if winner?()
    return 'LOSER!'
  end

  def result
    {@player.choice => @computer_choice}
  end

  def draw?
    @player.choice == @computer_choice
  end

  def winner?
    result()
    @logic.include?(result())
  end
end
