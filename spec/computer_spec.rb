require 'computer'

describe Computer do
  it 'should select an item from the array' do
    allow(subject).to receive(:auto).and_return(:rock)
    expect(subject.auto).to eq :rock
  end

  it 'should only select one out of rock, paper or scissors' do
    expect(subject.auto).to eq(:rock).or eq(:paper).or eq(:scissors)
  end
end
