require 'result'

describe Result do
  let(:game) { double("Game") }
  let(:gianluigi) { double("player1") }
  let(:mario) { double("player2") }
  let(:subject) { described_class.new(game) }

  before do
    allow(game).to receive(:player1).and_return(gianluigi)
    allow(game).to receive(:player2).and_return(mario)
    allow(gianluigi).to receive(:name).and_return("Gianluigi")
    allow(mario).to receive(:name).and_return("Mario")
    allow(mario).to receive(:action).and_return("scissors")
  end

  context "player1 wins" do
    before do
      allow(game).to receive(:winner).and_return(gianluigi)
    end

    it "shows Buffon gif when player 1 wins" do
      expect(subject.result_gif).to eq(
        '<iframe src="https://giphy.com/embed/jntidcZucjlkI" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>'
      )
    end

    it "returns player 1 winning string if player 1 wins" do
      expect(subject.result_string).to eq "You won Gianluigi, Mario chose scissors"
    end
  end

  context "player2 wins" do
    before do
      allow(game).to receive(:winner).and_return(mario)
    end

    it "shows crying gif when player 2 wins" do
      expect(subject.result_gif).to eq(
        '<iframe src="https://giphy.com/embed/d2lcHJTG5Tscg" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>'
      )
    end

    it "returns player 2 winning string if player 2 wins" do
      expect(subject.result_string).to eq "Mario chose scissors so you lose, Gianluigi"
    end
  end

  context "it's a draw" do
    before do
      allow(game).to receive(:winner).and_return("draw")
    end

    it "shows Nick Young gif when there is a draw" do
      expect(subject.result_gif).to eq(
        '<iframe src="https://giphy.com/embed/EimNpKJpihLY4" width="480" height="365" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>'
      )
    end

    it "shows 'it's a draw' string if neither player 1 nor player 2 wins" do
      expect(subject.result_string).to eq "It's a draw, you both chose scissors"
    end
  end
end
