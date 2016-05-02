require 'game'

describe Game do
  let(:computer) { double :computer }
  let(:player) { double(:player, name: "Elia") }
  subject(:game) { described_class.new(computer, player) }

  describe '#create' do
      it 'creates a new instance of a game class' do
        Game.create(player)
        expect(Game.instance).to be_a Game
      end
  end
  describe '#select_winner' do
    before do
      allow(computer).to receive(:computer_move).and_return(:rock)

    end
    it "returns draw when the moves are equal" do
      allow(player).to receive(:move).and_return(:rock)
      expect(game.select_winner(:rock)).to eq :draw
    end
    it "returns winner when the player wins the game" do
      allow(player).to receive(:move).and_return(:paper)
      expect(game.select_winner(:paper)).to eq :winner
    end
    it "returns losser when the player loses the game" do
      allow(player).to receive(:move).and_return(:scissors)
      expect(game.select_winner(:scissors)).to eq :looser
    end
  end
end
