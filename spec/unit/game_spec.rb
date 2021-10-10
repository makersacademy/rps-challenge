require 'game'

describe Game do
  let(:gianluigi) { double("Gianluigi") }
  let(:mario) { double("Mario") }
  let(:game) { described_class.create(gianluigi, mario) }

  before do
    allow(gianluigi).to receive(:name).and_return("Gianluigi")
    allow(mario).to receive(:name).and_return("Mario")
  end

  describe '#player1' do
    it "returns player 1" do
      expect(game.player1).to eq gianluigi
    end
  end

  describe '#player1' do
    it "returns player 2" do
      expect(game.player2).to eq mario
    end
  end

  describe '#winner' do
    before do
      allow(gianluigi).to receive(:action).and_return("✊")
    end
    it "returns tie when a draw" do
      allow(mario).to receive(:action).and_return("✊")
      expect(game.winner).to eq "draw"
    end

    it "returns player 1 when they win" do
      allow(mario).to receive(:action).and_return("✌")
      expect(game.winner).to eq gianluigi
    end

    it "returns player 2 when they win" do
      allow(mario).to receive(:action).and_return("🖐️")
      expect(game.winner).to eq mario
    end
  end

  context "testing variations of #winner to ensure complete unit code coverage" do
    it "returns player 1 when player 1 beats player 2 with paper" do
      allow(mario).to receive(:action).and_return("✊")
      allow(gianluigi).to receive(:action).and_return("🖐️")
      expect(game.winner).to eq gianluigi
    end
    
    it "returns player 1 when player 2 beats player 2 with scissors" do
      allow(gianluigi).to receive(:action).and_return("✌")
      allow(mario).to receive(:action).and_return("🖐️")
      expect(game.winner).to eq gianluigi
    end
  end
end
