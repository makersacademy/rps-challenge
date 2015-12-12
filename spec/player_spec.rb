require 'player'

describe Player do
  subject(:player) {Player.new(:name)}

  describe 'name' do
    it 'Displays name' do
      expect(player.name).to eq :name
    end
  end
end
