require 'game'

describe 'Game' do

  let (:game) {Game.new}
  let (:comp) {double(:comp)}
  let (:player) {double(:comp)}

  describe "#result" do
    it "returns a draw if they have the same choice" do
      allow(player).to receive(:choice).and_return("rock")
      allow(comp).to receive(:choice).and_return("rock")
      expect(game.result(player.choice, comp.choice)).to eq "drew"
    end

    it "lets player one know if they have one the game" do
      allow(player).to receive(:choice).and_return("rock")
      allow(comp).to receive(:choice).and_return("scissors")
      expect(game.result(player.choice , comp.choice)).to eq "won"
    end

    it "lets the player know if they have lost the game" do
      allow(player).to receive(:choice).and_return("rock")
      allow(comp).to receive(:choice).and_return("paper")
      expect(game.result(player.choice , comp.choice)).to eq "lost"
    end

  end


end