require 'player'

describe Player do
  let(:player) { described_class.new('Player') }
  let(:computer) { described_class.new('Computer') }

  it 'return the name of the player' do
    expect(player.name).to eq 'Player'
  end

  before do
    allow(computer).to receive(:random).and_return('Paper')
  end
  it 'choose randomly' do
    expect(computer.random).to eq 'Paper'
  end
end
