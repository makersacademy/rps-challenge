require 'player'

describe Player do
  it 'can make a choice' do
    expect(subject.choice(:rock)).to eq(:rock)
  end
end