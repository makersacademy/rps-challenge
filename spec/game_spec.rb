require 'game'

describe Game do
  let(:player) { double :double }
  let(:player_class) { double :double, new: player }

  context 'Single player' do
    let(:subject) { described_class.new(1, player_class) }

    describe '#add_name' do
      it 'passes the given name to the Player object' do
        expect(player).to receive(:add_name).with('Dave')
        subject.add_name('Dave')
      end
    end

    describe '#play' do
      it { is_expected.to respond_to(:play).with(1).argument }

      it 'passes the move to the Player object' do
        expect(player).to receive(:record_move).with('Paper')
        subject.play('Paper')
      end

      context 'after the move has been passed to the Player object' do
        before do
          allow(player).to receive(:record_move).with('Rock')
        end

        it 'calls method #random_move' do
          expect(subject).to receive(:random_move)
          subject.play('Rock')
        end

        it 'returns a random move into instance variable @computer_move' do
          srand(0)
          subject.play('Rock')
          expect(subject.computer_move).to eq 'Rock'
        end

        it 'returns \'It\'s a draw!\' if the moves are the same' do
          srand(0)
          subject.play('Rock')
          expect(subject.result).to eq "It's a draw!"
        end

        it 'returns \'You\'re a winner baby!\' if the player wins' do
          srand(5)
          subject.play('Rock')
          expect(subject.result).to eq "You're a winner baby!"
        end

        it 'returns \'You lose!\' if the player loses' do
          srand(1)
          subject.play('Rock')
          expect(subject.result).to eq "You lose!"
        end
      end
    end
  end

  context 'Multiplayer' do
    let(:subject) { described_class.new(2, player_class) }

    describe '#add_name' do
      it 'Passes names to the two Player objects' do
        expect(player).to receive(:add_name).with('Dave')
        expect(player).to receive(:add_name).with('Ben')
        subject.add_name('Dave', 'Ben')
      end
    end

  end

end
