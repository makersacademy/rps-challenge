require 'rps_game'

describe RPSGame do

  it 'randomly generates rock, paper or scissors' do
    expect(["rock", "paper", "scissors"]).to include (subject.computer_choice)
  end

  describe 'winner' do

    context "computer chooses rock" do
      before (:each) do
        expect(subject).to receive(:computer) {"rock"}
      end

      it 'declares tie when player chooses rock ' do
        subject.player_1 "rock"
        expect(subject.winner).to eq "you tie"
      end

      it 'declares player winner when they choose paper' do
        subject.player_1 "paper"
        expect(subject.winner).to eq "you win"
      end
      it 'declares player loser they choose scissors' do
        subject.player_1 "scissors"
        expect(subject.winner).to eq "you loose"
      end
    end
  end
end
