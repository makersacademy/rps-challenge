require 'game'

describe Game do
  let(:computer) { double :computer }
  subject(:game) { described_class.new("Mengchen", :rock, computer) }

  desribe '#initialize' do
    it 'assigns player name to @player_1' do
      expect(game.player_1).to eq("Mengchen")
    end

    it 'assigns player weapon to @player_1_choice' do
      expect(game.player_1_choice).to eq(:rock)
    end

    it 'assigns instance of computer class to @computer' do
      expect(game.computer).to eq(computer)
    end
  end

  describe '#result' do
    it 'returns :draw when the player and computer choose the same weapon' do
      allow(computer).to receive(:choice).and_return(:rock)
      expect(game.result).to eq(:draw)
    end

    it 'returns :win when the player beats the computer' do
      allow(computer).to receive(:choice).and_return(:scissors)
      expect(game.result).to eq(:win)
    end

    it 'returns :lose when the player is beaten by the computer' do
      allow(computer).to receive(:choice).and_return(:paper)
      expect(game.result).to eq(:lose)
    end
  end
end
