require 'player'

describe Player do
  subject(:player) { described_class.new('Ruby') }
  
  context '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq 'Ruby'
    end
  end
end
