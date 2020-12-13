feature Game do
    let(:move){ double :ROCK}
    
    subject { described_class.new(move) }

    scenario 'user can win a game and get a confirmation' do
        allow(subject).to receive(:computer_move){ :SCISSORS }
        expect(subject.winner).to eq "You win, WOOHOO!!"
    end

    scenario 'user can lose a game and get a confirmation' do
        allow(subject).to receive(:computer_move){ :PAPER }
        expect(subject.winner).to eq "Unlucky champ... the machine has got the better of you."
    end
end