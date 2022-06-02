require 'game'

describe Game do
  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player }

  describe '#ai_choice' do
    it 'returns paper' do
      allow(game).to receive(:ai_choice).and_return 'paper'
      expect(game.ai_choice).to eq 'paper'
      game.ai_choice
    end
  end

  describe '#get_player_choice' do
    it "it returns the player's choice" do
      allow(player_1).to receive(:make_choice).with('rock').and_return 'rock'
      expect(game).to receive(:get_player_choice).and_return 'rock'
      game.get_player_choice
    end
  end
end