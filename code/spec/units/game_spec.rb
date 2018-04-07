require 'game'

describe 'Game' do

  let (:game) {Game.new}
  let (:comp) {double(:comp)}
  let (:player) {double(:comp)}

  describe "#result" do
    it "returns a draw if they have the same choice" do
      allow(comp).to receive(:choice).and_return(:rock)
      allow(player).to receive(:choice).and_return(:rock)
      #want to review how to improve this test based on stubbed methods
      allow(game).to receive(:result).and_return(:draw)
    end

    it "lets player one know if they have one the game" do
      allow(comp).to receive(:choice).and_return(:paper)
      allow(player).to receive(:choice).and_return(:scissors)
      allow(game).to receive(:result).and_return(:win)
    end

    it "lets the player know if they have lost the game" do
      allow(comp).to receive(:choice).and_return(:paper)
      allow(player).to receive(:choice).and_return(:rock)
      allow(game).to receive(:result).and_return(:loss)
    end

  end


end