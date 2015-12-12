require 'player'

describe Player do
  subject(:player) {described_class.new(:name)}

  describe 'display name' do
    it 'Displays name' do
      expect(player.name).to eq :name
    end
  end
end
