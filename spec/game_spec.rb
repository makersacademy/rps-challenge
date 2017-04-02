require 'game'

describe Game do
  let(:game) {described_class.new}

  before do
    game.input_weapons(:rock, :paper)
  end

  describe '#input_weapons' do
    it "gets and stores the player's choice of weapon" do
      expect(game.player_choice).to eq(:rock)
    end

    it "gets and stores the computer's choice of weapon" do
      expect(game.computer_choice).to eq(:paper)
      end

    describe '#result' do
      it 'returns the correct winner of the match' do
      expect(game.winner).to eq(:computer)
      end
    end
  end
end
