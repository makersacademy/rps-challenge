require 'marketeer'

describe Marketeer do
  subject(:marketeer) { described_class.new(object) }
  let(:object) { { "name" => "Liv", "marketeer_choice" => :rock, "opponent_choice" => :scissors } }

  context "#name" do
    it "returns the marketeer's name" do
      expect(marketeer.name).to eq "Liv"
    end
  end

  context "choices" do
    it "returns the marketeer's choice (rock/paper/scissors)" do
      expect(marketeer.marketeer_choice).to eq :rock
    end

    it "returns the opponent's choice (rock/paper/scissors)" do
      expect(marketeer.opponent_choice).to eq :scissors
    end
  end

  context 'game result' do
    describe '#win?' do
      it 'returns true if marketeer has won' do
        expect(marketeer.win?).to eq true
      end
    end

    describe '#lose?' do
      let(:object) { { "name" => "Liv", "marketeer_choice" => :rock, "opponent_choice" => :paper } }
      it 'returns true if marketeer has lost the game' do
        expect(marketeer.lose?).to eq true
      end
    end

    describe '#draw?' do
      let(:object) { { "name" => "Liv", "marketeer_choice" => :rock, "opponent_choice" => :rock } }
      it "returns true if it's a draw" do
        expect(marketeer.draw?).to eq true
      end
    end
  end
end
