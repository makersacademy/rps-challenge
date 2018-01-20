require_relative '../../lib/computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'chooses rock' do
    allow(computer).to receive(:random).and_return 0
    computer.choose
    expect(computer.move).to eq :rock
  end

  it 'chooses paper' do
    allow(computer).to receive(:random).and_return 1
    computer.choose
    expect(computer.move).to eq :paper
  end

  it 'chooses scissors' do
    allow(computer).to receive(:random).and_return 2
    computer.choose
    expect(computer.move).to eq :scissors
  end
end
