require 'player'

describe Player do
  subject(:player) { described_class.new('claudia') }
  context '#initialize' do
    it 'returns its name' do
      expect(player.name).to eq 'claudia'
    end
  end
end
