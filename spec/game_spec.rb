require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:name) { double :name }
  subject(:game) {described_class.new(player, computer)}


    it 'initializes with a player' do
      expect(game.player).to eq player
    end

  describe "#winner" do

    it 'returns the winner of the game' do
      allow(player).to receive(:name).and_return(:name)
      allow(player).to receive(:weapon).and_return("paper")
      allow(computer).to receive(:weapon).and_return("rock")
      expect(game.winner).to eq player.name
    end
  end

end
