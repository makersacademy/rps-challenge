require 'game'
describe Game do
  before do
    srand(123423533)
  end
  it 'it responds to play' do
    expect(subject).to respond_to :play
  end

  it 'will tell you if you won' do
    expect(subject.play("rock")).to eq "Win"
  end

  it 'will tell you if its a draw' do
    expect(subject.play("scissors")).to eq "Draw"
  end

  it 'will tell you if its a loss' do
    expect(subject.play("paper")).to eq "Loss"
  end
end
