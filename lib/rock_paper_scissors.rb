class RockPaperScissors

  attr_reader :player_choice, :computer_choice, :result

  MOVES = ['ROCK', 'PAPER', 'SCISSORS']
  RESULTS_HASH = {
    ROCKROCK: 'DRAW',
    PAPERPAPER: 'DRAW',
    SCISSORSSCISSORS: 'DRAW',
    ROCKPAPER: 'LOSE',
    ROCKSCISSORS: 'WIN',
    PAPERSCISSORS: 'LOSE',
    PAPERROCK: 'WIN',
    SCISSORSROCK: 'LOSE',
    SCISSORSPAPER: 'WIN'
  }

  def self.create(player_choice)
    @rps = RockPaperScissors.new(player_choice)
  end

  def self.instance
    @rps
  end

  def initialize(player_choice)
    @player_choice = player_choice
  end

  def play
    @computer_choice = random_move
    @result = RESULTS_HASH[(@player_choice + @computer_choice).to_sym]
  end

  private

  def random_move
    MOVES.sample
  end
end
