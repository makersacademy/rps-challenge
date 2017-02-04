require 'result'

describe Result do
  subject(:result) { described_class.new }

  describe'.result' do

    context "Draw" do

      it 'test for player 1 and player 2 making the same call - Rock' do
        expect(result.responses([:Rock, :Rock])).to eq "It is a draw"
      end

      it 'test for player 1 and  player 2 making the same call - Paper' do
        expect(result.responses([:Paper, :Paper])).to eq "It is a draw"
      end

      it 'test for player 1 and player 2 making the same call - Scissors' do
        expect(result.responses([:Scissors, :Scissors])).to eq "It is a draw"
      end
    end

    context "Player_1 wins" do

      it 'tests player 1 calling rock and player 2 calling scissors' do
        expect(result.responses([:Rock, :Scissors])).to eq :Rock
      end

      it 'tests player 1 calling paper and player 2 calling rock' do
        expect(result.responses([:Paper, :Rock])).to eq :Paper
      end

      it 'tests player 1 calling scissors and player 2 calling paper' do
        expect(result.responses([:Scissors, :Paper])).to eq :Scissors
      end
    end

    context "Player_2 wins " do

      it 'tests player 1 calling paper and player 2 calling scissors' do
        expect(result.responses([:Paper, :Scissors])).to eq :Scissors
      end

      it 'tests player 1 calling rock and player 2 calling paper' do
        expect(result.responses([:Rock, :Paper])).to eq :Paper
      end

      it 'tests player 1 calling scissors and player 2 calling rock' do
        expect(result.responses([:Scissors, :Rock])).to eq :Rock
      end

    end
  end
end
