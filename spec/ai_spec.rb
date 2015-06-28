require './lib/ai'
describe AI do

  it 'did not win when initialized' do
    expect(subject.won?).to eq false
  end

  it 'has a choose method' do
    expect(subject).to respond_to :choose
  end

  it 'can choose randomly' do
    allow(subject).to receive(:choose) {:Paper}
    expect(subject.choose).to eq :Paper
  end

  it 'can win' do
    subject.wins
    expect(subject.won?).to eq true
  end

  it 'can loose' do
    subject.looses
    expect(subject.lost?).to eq true
  end
end
