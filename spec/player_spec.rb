require 'player'

describe Player do
  subject(:player) { described_class.new "Fake name" }

  describe "#initialize" do
    it '> should return a name' do
      expect(player.name).to eq("Fake name")
    end
  end

  describe '#store_attack' do
    it '>should store last attack' do
      player.store_attack("Rock")
      expect(player.last_move?).to eq("Rock")
    end
  end

end
