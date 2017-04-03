require 'pry'
require 'game'

describe Game do
  let(:game_win) {described_class.new(:rock, :scissors)}
  let(:game_draw) {described_class.new(:rock, :rock)}
  let(:game_lose) {described_class.new(:rock, :paper)}

  describe '#input_weapons' do
    it "gets and stores the player's choice of weapon" do
      expect(game_win.player_choice).to eq(:rock)
    end

    it "gets and stores the computer's choice of weapon" do
      expect(game_win.computer_choice).to eq(:scissors)
      end
  end
    describe '#result win' do
      it 'returns the cot winner of the match' do
        expect(game_win.result).to eq("A player victory")
      end
    end

    describe '#result draw' do
      it 'returns the cot winner of the match' do
        expect(game_draw.result).to eq("Draw")
      end
    end

    describe '#result lose' do
      it 'returns the cot winner of the match' do
        expect(game_lose.result).to eq("A computer victory")
      end
    end
end
