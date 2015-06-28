require 'rps_game'

describe RPSGame do

  describe 'play' do

    context "allows players to enter choice and checks for winner" do

      it 'declares a tie computer and player choose rock' do
        allow(subject).to receive(:computer) {"rock"}
        expect(subject.play "rock").to eq "you tie"
      end

      it 'declares player winner when they choose scissors against paper' do
        allow(subject).to receive(:computer) {"paper"}
        expect(subject.play "scissors").to eq "you win"
      end

      it 'declares player loser when they choose scissors against rock' do
        allow(subject).to receive(:computer) {"rock"}
        expect(subject.play "scissors").to eq "you loose"
      end
    end
  end
end
