require 'game'

describe Game do

  let(:computer_scissors) { Game.new(2) }
  let(:computer_rock) { Game.new(0) }
  let(:computer_paper) { Game.new(1) }

  describe '#rock' do
    context 'computer move is paper' do
      it 'returns a losing message' do
        expect(computer_paper.rock).to eq "Sorry, you lose! You picked rock and the computer picked paper."
      end
    end

    context 'computer move is rock' do
      it 'returns a drawing message' do
        expect(computer_rock.rock).to eq "It's a draw! You picked rock and so did the computer."
      end
    end

    context 'computer move is scissors' do
      it 'returns a winning message' do
        expect(computer_scissors.rock).to eq "Congratulations, you won! You picked rock and the computer picked scissors."
      end
    end
  end

  describe '#paper' do
    context 'computer move is paper' do
      it 'returns a drawing message' do
        expect(computer_paper.paper).to eq "It's a draw! You picked paper and so did the computer."
      end
    end

    context 'computer move is rock' do
      it 'returns a winning message' do
        expect(computer_rock.paper).to eq "Congratulations, you won! You picked paper and the computer picked rock."
      end
    end

    context 'computer move is scissors' do
      it 'returns a losing message' do
        expect(computer_scissors.paper).to eq "Sorry, you lose! You picked paper and the computer picked scissors."
      end
    end
  end

  describe '#scissors' do
    context 'computer move is paper' do
      it 'returns a winning message' do
        expect(computer_paper.scissors).to eq "Congratulations, you won! You picked scissors and the computer picked paper."
      end
    end

    context 'computer move is rock' do
      it 'returns a losing message' do
        expect(computer_rock.scissors).to eq "Sorry, you lose! You picked scissors and the computer picked rock."
      end
    end

    context 'computer move is scissors' do
      it 'returns a drawing message' do
        expect(computer_scissors.scissors).to eq "It's a draw! You picked scissors and so did the computer."
      end
    end
  end

end
