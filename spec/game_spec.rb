require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2, "one", "classic") }
  let(:player_1) {  double :player_1, name: 'Sergio' }
  let(:player_2) {  double :player_2, name: 'Computer' }
  context "On initalization" do
    it "Retrieves the first player" do
      expect(game.player_1).to eq player_1
    end

    it "Retrieves the second player" do
      expect(game.player_2).to eq player_2
    end
  end

  context ".create" do
    it "responds to .create" do
      expect(Game.create(player_1,player_2,"one","classic")).to be_instance_of(described_class)
    end
  end

  context ".instance" do
    it "responds to .instance" do
      expect(Game.instance).to be_instance_of(described_class)
    end
  end

  context "#result" do
    it "provides result draw for Rock and Rock" do
      expect(game.result).to eq :draw
    end
  end

end