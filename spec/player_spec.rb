require 'player'

describe Player do
  subject(:player) { described_class.new(:name) }

  describe 'display name' do
    it 'displays name of player' do
      expect(player.name).to eq :name
    end
  end

  describe '#choose' do
    it 'saves chosen weapon as a symbol' do
      player.choose(:rock)
      expect(player.weapon).to eq (:rock)
    end
  end
end
