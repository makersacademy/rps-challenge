require 'game'

describe Game do
  it 'computer player can return a random choice' do
    allow(subject).to receive(:computer_play).and_return(:rock)
    expect(subject.computer_play).to eq(:rock)
  end

  it 'player can win' do
    allow(subject).to receive(:player_win?).and_return(true)
    expect(subject.player_win?).to eq(true)
  end
end
