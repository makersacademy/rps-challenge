require 'player'

describe Player do
  subject(:player) { described_class.new(name: :tobenna) }
  describe '#initialize' do
    it { expect(player.name).to eq :tobenna }
  end
end
