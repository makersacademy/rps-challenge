require 'game'

describe Game do
  let(:player) { double "player" }
  let(:computer) { double "computer" }
  let(:game) { described_class.new(player) }

  describe "#rock" do
    it 'allows player to choose rock' do
      allow(player).to receive(:move).and_return("Rock")
      expect(game.player.move).to eq("Rock")
    end
  end

  describe "#paper" do
    it 'allows player to choose paper' do
      allow(player).to receive(:move).and_return("Paper")
      expect(game.player.move).to eq("Paper")
    end
  end

  describe "#scissors" do
    it 'allows player to choose scissors' do
      allow(player).to receive(:move).and_return("Scissors")
      expect(game.player.move).to eq("Scissors")
    end
  end

  describe "#computer_move" do 
    it "computer does a random move" do
      allow(computer).to receive(:random_move).and_return("Scissors")
      expect(game.computer_move).to eq("Scissors")
    end
  end

end
