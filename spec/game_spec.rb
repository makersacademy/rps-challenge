require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }


  describe '#get_player_choice' do
    it "it returns player 1 choice" do
      allow(player_1).to receive(:make_choice).with('rock').and_return 'rock'
      expect(game).to receive(:get_player_1_choice).and_return 'rock'
      game.get_player_1_choice
    end

    it "it returns player 2 choice" do
      allow(player_2).to receive(:make_choice).with('paper').and_return 'paper'
      expect(game).to receive(:get_player_2_choice).and_return 'paper'
      game.get_player_2_choice
    end
  end
end