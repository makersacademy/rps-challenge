require 'game'

describe Game do
  let(:rock) { double :rock, win: ['scissors'], name: 'rock' }
  let(:paper) { double :paper, win: ['rock'], name: 'paper' }
  let(:scissors) { double :scissors, win: ['paper'], name: 'scissors' }
  let(:choices) { [rock] }
  let(:player2) { double :player2, choice: rock, name: 'rock' }
  let(:player1) { double :player1, name: 'vin' }
  let(:rules) { { 'scissors_paper' => 'Scissors cuts Paper' } }
  subject { described_class.new(player1, player2, choices, rules) }

  it 'has player1' do
    expect(subject.player1).to eq player1
  end

  it 'has player2' do
    expect(subject.player2).to eq player2
  end

  context 'choices' do
    it 'has choices' do
      expect(subject.choices).to eq choices
    end
  end

  context 'rules' do
    it 'has rules' do
      expect(subject.rules).to eq rules
    end
  end

  describe '#opposite_of' do
    it 'returns the other player' do
      expect(subject.opposite_of(player1)).to eq player2
    end
  end

  context 'end game' do
    describe '#tie?' do
      it 'is tie when it\'s the same choices for both player' do
        allow(player1).to receive(:choice).and_return(rock)
        allow(player2).to receive(:choice).and_return(rock)
        expect(subject.tie?).to eq true
      end

      it 'is not tie when it\'s not the same choices for both player' do
        allow(player1).to receive(:choice).and_return(rock)
        allow(player2).to receive(:choice).and_return(paper)
        expect(subject.tie?).to eq false
      end

      it 'raises an error if player 2 is not choosen move' do
        allow(player1).to receive(:choice).and_return(rock)
        allow(player2).to receive(:choice).and_return(nil)
        expect { subject.tie? }.to raise_error "Not everyone chosen"
      end

      it 'raises an error if player 1 is not choosen move' do
        allow(player1).to receive(:choice).and_return(nil)
        allow(player2).to receive(:choice).and_return(rock)
        expect { subject.tie? }.to raise_error "Not everyone chosen"
      end
    end

    describe '#winner' do
      it 'choose the winner if rock vs. paper' do
        allow(player1).to receive(:choice).and_return(rock)
        allow(player2).to receive(:choice).and_return(paper)
        subject.game_over
        expect(subject.winner).to eq player2
      end
      it 'choose the winner if paper vs. scissors' do
        allow(player1).to receive(:choice).and_return(paper)
        allow(player2).to receive(:choice).and_return(scissors)
        subject.game_over
        expect(subject.winner).to eq player2
      end
      it 'choose the winner if rock vs. scissors' do
        allow(player1).to receive(:choice).and_return(rock)
        allow(player2).to receive(:choice).and_return(scissors)
        subject.game_over
        expect(subject.winner).to eq player1
      end
    end
    context 'loser' do
      describe '#loser' do
        it 'returns the loser' do
          allow(player1).to receive(:choice).and_return(paper)
          allow(player2).to receive(:choice).and_return(scissors)
          subject.game_over
          expect(subject.loser).to eq player1
        end
      end
    end
    describe '#winner_text' do
      it 'returns the winners text' do
        allow(player1).to receive(:choice).and_return(paper)
        allow(player2).to receive(:choice).and_return(scissors)
        subject.game_over
        expect(rules).to receive_message_chain(:rules, :[]).with(:scissors_paper)
        subject.winner_text
      end
    end

    describe '#tie_text' do
      it 'returns the tie text' do
        expect(subject.tie_text).to eq Game::TIE
      end
    end
  end
end
