require 'cpu'

describe Computer do
  it 'has a name' do
    expect(subject.name).to eq('Computer')
  end
  it 'can start a move' do
    version = double(:version)
    allow(version).to receive(:moves).and_return(['Rock', 'Paper', 'Scissors'])
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    expect(subject.move(version)).to eq('Rock')
  end
  it 'returns a move if already set' do
    version = double(:version)
    allow(version).to receive(:moves).and_return(['Rock', 'Paper', 'Scissors'])
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    subject.move(version)
    expect(subject.move).to eq('Rock')
  end
end
