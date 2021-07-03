require 'game'

describe Game do
  let(:player) { double :player, name: "Samson", move: :rock }
  let(:computer) { double :computer, move: "paper" }
  let(:game) { Game.new(player, computer) }

  describe '#draw?' do
    it 'returns false if attacks arent equal' do
      expect(game.draw?).to eq false
    end
    it 'returns true if attacks are equal' do
      player_2 = double(:computer, move: "rock")
      expect(Game.new(player, player_2).draw?).to eq true
    end
  end

  describe '#win?' do
    it "returns false if players move doesn't beat the computers" do
      expect(game.win?).to eq false
    end
    it 'returns true if players move beats computers' do
      player_2 = double(:computer, move: "scissors")
      expect(Game.new(player, player_2).win?).to eq true
    end
  end
end
