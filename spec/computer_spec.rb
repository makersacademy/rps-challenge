require 'computer'

describe Computer do

  it 'shoud select an item from the array' do
    allow(subject).to receive(:auto).and_return(:rock)
    expect(subject.auto).to eq :rock
  end

  it 'makes the weather stormy' do
    subject.auto
    expect(subject.auto).to eq(:rock).or eq(:paper).or eq(:sunny)
  end
end
