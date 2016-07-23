require 'messages'

describe Messages do
  subject(:message) { described_class.new }
  let(:player_1) { double :player_1 }

  describe '#draw_message' do
    it 'returns draw message' do
      expect(message.draw_message).to eq("It's a draw!")
    end
  end

  describe '#round_win_message' do
    it 'returns round winner message' do
      allow(player_1).to receive(:name).and_return("Player 1")
      expect(message.round_win_message(player_1)).to eq("Player 1 wins the round!")
    end
  end
end
