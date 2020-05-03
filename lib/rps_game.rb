class RPSGame
  attr_reader :player1
  attr_accessor :player2

  def initialize(player1 = HumanPlayer.new, player2 = ComputerPlayer.new)
    @player1 = player1
    @player2 = player2
  end

  def result(player1_weapon, player2_weapon)
    LOOKUP_TABLE[player1_weapon][player2_weapon]
  end

  def self.create(player1, player2)
    @game = RPSGame.new(player1, player2)
  end

  def self.instance
    @game
  end

  private

  LOOKUP_TABLE = {
    rock: {rock: 'draw', paper: 'lose', scissors: 'win'},
    paper: {rock: 'win', paper: 'draw', scissors: 'lose'},
    scissors: {rock: 'lose', paper: 'win', scissors: 'draw'}
  }
end
