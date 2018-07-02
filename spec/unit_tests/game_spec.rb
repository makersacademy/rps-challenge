require './lib/game'

describe Game do
  let(:player_pick) { :rock }
  let(:computer_pick) { nil }
  subject(:game) { described_class.new(player_pick, computer_pick) }

  describe '#result' do
    context "player's pick beats computer's pick" do
      it 'returns win' do
        allow(game).to receive(:computer_pick).and_return(:scissors)
        expect(game.result).to eq :win
      end
    end

    context "computers's pick beats players's pick" do
      it 'returns lose' do
        allow(game).to receive(:computer_pick).and_return(:paper)
        expect(subject.result).to eq :lose
      end
    end

    context "player's pick is the same as computer's pick" do
      it 'returns draw' do
        allow(game).to receive(:computer_pick).and_return(:rock)
        expect(subject.result).to eq :draw
      end
    end
  end
end
