require 'player'

describe Player do
  subject(:player) {described_class.new('Tony')}

  describe 'name' do
    it 'should return player name' do
      expect(player.name).to eq 'Tony'
    end
  end
end
