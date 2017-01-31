require 'player'

describe Player do
  subject(:player) {described_class.new(name)}
  let(:joueur) {double (:joueur)}

  describe '#player' do
    it 'retrieves the player' do
      expect(player.name).to eq joueur
    end
  end
end
