require 'game'

describe Game do
  let(:player_choice) { double(:player_choice) }
  let(:computer_choice) { double(:computer_choice) }
  subject(:game) { described_class.new(player_choice, computer_choice) }

  describe '#choices' do
    it "knows player's choice" do
      expect(game.player_choice).to eq player_choice
    end

    it "knows computer's choice" do
      expect(game.computer_choice).to eq computer_choice
    end
  end

  describe '#result' do
    it 'tests a win' do
      allow(game).to receive(:beats?).and_return(true)
      expect(game.result).to eq 'Win'
    end
    it 'tests a draw' do
      allow(game).to receive(:beats?).and_return(:draw)
      expect(game.result).to eq 'Draw'
    end
    it 'tests a loss' do
      allow(game).to receive(:beats?).and_return(false)
      expect(game.result).to eq 'Lose'
    end
  end
end
