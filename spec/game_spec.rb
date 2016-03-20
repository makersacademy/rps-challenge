require 'game'

describe Game do
  subject(:game) { described_class.new "Fake Name" }

  describe '#attack' do
    it '>should return random attack when called' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      expect(game.attack).to eq("Rock")
    end
  end

  describe "#player_name" do
    it '> should return player name' do
      expect(game.player_name).to eq("Fake Name")
    end
  end

end
