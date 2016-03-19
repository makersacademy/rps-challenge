require 'player'

describe Player do
  subject(:player) { described_class.new(name: :tobenna, type: :ai) }
  describe '#initialize' do
    describe '#name' do
      it { expect(player.name).to eq :tobenna }
    end
    describe '#type' do
      it { expect(player.type).to eq :ai }
    end
  end
end
