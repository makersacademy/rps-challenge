class RPS

  RPS_ARRAY = ['Rock', 'Scissors', 'Paper']
  RPS_WIN = {
    'Rock' => 'Scissors',
    'Scissors' => 'Paper',
    'Paper' => 'Rock' }
  attr_reader :move, :rps_array

  def initialize(move)
    @move = move
  end

  def computermove
    @rps_array = RPS_ARRAY
    @rps_array[Kernel.rand(3)]
  end

  def winner
    @rps_win = RPS_WIN
    if @move == computermove
      'Draw'
    elsif @rps_win[@move] == computermove
      'Win'
    else
      'Lose'
    end
  end

end
