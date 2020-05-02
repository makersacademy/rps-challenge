require 'ai_player'

describe AIPlayer do

  let(:scissor_random) { double(:rand => 2) }
  let(:rock_random) { double(:rand => 0) }
  let(:subject) { described_class.new(scissor_random) }

  it 'has a name' do
    expect(subject.name).to eq('愛')
  end

  it 'makes a random choice' do
    expect(subject.choose_random).to eq('scissors')
  end

  it 'assigns a random choice when choosing' do
    expect{ subject.choose }.to change { subject.choice }.to eq('scissors')
  end

  it 'assigns a different random choice when choosing' do
    subject = described_class.new(rock_random)
    expect{ subject.choose }.to change { subject.choice }.to eq('rock')
  end
end
