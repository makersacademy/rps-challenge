require 'result'

describe Result do
  subject(:result) { described_class.new }

  describe'.result' do

    context "Draw" do

      it 'test for computer and user making the same call - Rock' do
        expect(result.responses([:Rock, :Rock])).to eq "It is a Draw"
      end

      it 'test for computer and user making the same call - Paper' do
        expect(result.responses([:Paper, :Paper])).to eq "It is a Draw"
      end

      it 'test for computer and user making the same call - Scissors' do
        expect(result.responses([:Scissors, :Scissors])).to eq "It is a Draw"
      end
    end

    context "Win" do

      it 'tests user calling rock and computer calling scissors' do
        expect(result.responses([:Rock, :Scissors])).to eq "Well Done, You Win!"
      end

      it 'tests user calling paper and computer calling rock' do
        expect(result.responses([:Paper, :Rock])).to eq "Well Done, You Win!"
      end

      it 'tests user calling scissors and computer calling paper' do
        expect(result.responses([:Scissors, :Paper])).to eq "Well Done, You Win!"
      end
    end

    context "Lose" do

      it 'tests user calling paper and computer calling scissors' do
        expect(result.responses([:Paper, :Scissors])).to eq "Sorry but You Lose"
      end

      it 'tests user calling rock and computer calling paper' do
        expect(result.responses([:Rock, :Paper])).to eq "Sorry but You Lose"
      end

      it 'tests user calling scissors and computer calling rock' do
        expect(result.responses([:Scissors, :Rock])).to eq "Sorry but You Lose"
      end

    end
  end
end
