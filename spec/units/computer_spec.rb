require 'computer'

describe Computer do
  let(:computer) { Computer.new }

  it 'is named computer' do
    expect(computer.name).to eq 'Computer'
  end

  it 'returns rock' do
    allow(Computer::OPTIONS).to receive(:sample).and_return(:rock)
    expect(computer.move).to eq :rock
  end

  it 'returns paper' do
    allow(Computer::OPTIONS).to receive(:sample).and_return(:paper)
    expect(computer.move).to eq :paper
  end

  it 'returns scissors' do
    allow(Computer::OPTIONS).to receive(:sample).and_return(:scissors)
    expect(computer.move).to eq :scissors
  end

  it 'returns lizard' do
    allow(Computer::OPTIONS).to receive(:sample).and_return(:lizard)
    expect(computer.move).to eq :lizard
  end

  it 'returns spock' do
    allow(Computer::OPTIONS).to receive(:sample).and_return(:spock)
    expect(computer.move).to eq :spock
  end
end
