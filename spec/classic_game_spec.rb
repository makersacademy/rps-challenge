require 'classic_game'

describe ClassicGame do
  let(:player_one) { double(:player) }
  let(:game) { described_class.new(player_one) }

  describe '#player' do
    it "has one player" do
      expect(game.player).to eq player_one
    end
  end

  describe '#move' do
    it "accepts a valid move" do
      expect { game.move("Rock") }.not_to raise_error
    end

    it "throws an error with an invalid move" do
      expect { game.move("invalid") }.to raise_error "invalid move"
    end
  end

  describe '#ai move' do
    it "generates rock" do
      allow(game).to receive(:random_number).and_return 1
      expect(game.ai_move).to eq "Rock"
    end

    it "generates paper" do
      allow(game).to receive(:random_number).and_return 2
      expect(game.ai_move).to eq "Paper"
    end

    it "generates scissors" do
      allow(game).to receive(:random_number).and_return 3
      expect(game.ai_move).to eq "Scissors"
    end
  end
end
