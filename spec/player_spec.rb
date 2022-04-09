require_relative '../lib/player'

describe Player do

  let(:player) { described_class.new(:player_name) }

  describe '#initialize' do
  
    it 'creates player object with name taken from argument given' do
      expect(player.name).to eq :player_name
    end
  end
end
