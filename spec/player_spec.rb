require 'player'

describe Player do
  let(:player_1) { described_class.new('Dan') }

  describe '#initialize' do
    it 'initializes with name Dan' do
      expect(player_1.name).to eq 'Dan'
    end
  end
end