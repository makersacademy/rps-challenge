describe '#random_counter_move' do
  it 'returns a random rock, paper, scissors move' do
    computerplayer = ComputerPlayer.new
    expect(%w[Rock Paper Scissors]).to include(computerplayer.random_counter_move)
  end
end
