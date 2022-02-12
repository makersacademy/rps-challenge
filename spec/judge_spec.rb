require './lib/judge'

describe Judge do
  it 'returns computer wins if computer wins' do
    judge = Judge.new("Rock", "Paper")
    expect(judge.winner).to eq "Computer wins"
  end
  it 'returns player wins if player wins' do
    judge = Judge.new("Rock", "Scissors")
    expect(judge.winner).to eq "Player wins"
  end
  it 'returns draw if there is a draw' do
    judge = Judge.new("Rock", "Rock")
    expect(judge.winner).to eq "It was a draw"
  end

end
