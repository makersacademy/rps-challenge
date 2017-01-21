require 'player'

describe Player do
  subject { described_class.new("Luigi", "Rock") }
  let(:ai_player) { described_class.new }
  it '#name' do
    expect(subject.name).to eq "Luigi"
  end
  it '#choice' do
    expect(subject.choice).to eq "Rock"
  end
  it 'picks a random name from NAMES if none is given' do
    expect(described_class::NAMES.include?(ai_player.name)).to eq true
  end
end
