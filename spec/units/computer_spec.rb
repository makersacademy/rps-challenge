require 'computer'

describe Computer do
  let(:computer) { Computer.new(options) }
  let(:options) { [:rock, :paper, :scissors, :lizard, :spock] }

  it 'returns rock' do
    allow(options).to receive(:sample).and_return(:rock)
    expect(computer.move2).to eq :rock
  end

  it 'returns paper' do
    allow(options).to receive(:sample).and_return(:paper)
    expect(computer.move2).to eq :paper
  end

  it 'returns scissors' do
    allow(options).to receive(:sample).and_return(:scissors)
    expect(computer.move2).to eq :scissors
  end

  it 'returns lizard' do
    allow(options).to receive(:sample).and_return(:lizard)
    expect(computer.move2).to eq :lizard
  end

  it 'returns spock' do
    allow(options).to receive(:sample).and_return(:spock)
    expect(computer.move2).to eq :spock
  end
end
