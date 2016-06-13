require 'player'

describe Player do
	
  subject(:player_name) { described_class.new('Luke') }

  describe '#name' do
  	it 'returns the player name' do
      expect(player_name.name).to eq 'Luke'
  	end
  end

end