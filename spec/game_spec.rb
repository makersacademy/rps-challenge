require 'game'

describe Game do

  let(:game) { described_class.new(player_1, computer) }
  let(:player_1) { double :player_1 }
  let(:computer) { double :computer }

  describe 'initializing a player' do
    it 'returns the name of the player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe 'results' do
    before do
      allow(computer).to receive(:choice).and_return "Scissors"
    end
    it 'can read the computers choice' do
      expect(game.computer.choice).to eq 'Scissors'
    end
    it 'returns draw if both choose the same' do
      expect(game.result("Scissors")).to eq "You drew!"
    end
    it 'returns you win if the player wins' do
      expect(game.result("Rock")).to eq "You won!"
    end
    it 'returns you lose if the player loses' do
      expect(game.result("Paper")).to eq "You lose!"
    end
  end

end
