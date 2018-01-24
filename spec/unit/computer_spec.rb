require_relative '../../lib/computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'chooses rock' do
    allow(computer).to receive(:random).and_return :rock
    computer.choose
    expect(computer.move).to eq :rock
  end

  it 'chooses paper' do
    allow(computer).to receive(:random).and_return :paper
    computer.choose
    expect(computer.move).to eq :paper
  end

  it 'chooses scissors' do
    allow(computer).to receive(:random).and_return :scissors
    computer.choose
    expect(computer.move).to eq :scissors
  end
end
