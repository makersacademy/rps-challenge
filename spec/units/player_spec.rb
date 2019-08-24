require 'player'

describe Player do
  subject(:subject) { described_class.new('Chris') }
  it 'has a name' do
    expect(subject.name).to eq('Chris')
  end
  it 'can start a move' do
    version = double(:version)
    expect(subject.move(version, 'Rock')).to eq('Rock')
  end
  it 'returns a move if already set' do
    version = double(:version)
    subject.move(version, 'Rock')
    expect(subject.move).to eq('Rock')
  end
end
