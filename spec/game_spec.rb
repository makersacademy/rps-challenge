require 'game'

describe Game do
  let(:player) { double :player, save_move: "" }
  let(:player_class) { double :player_class, new: player }

  context 'Single player' do
    let(:subject) { described_class.new(1, player_class) }

    describe '#save_name' do
      it 'saves name to Player object' do
        expect(player).to receive(:save_name).with('Dave')
        expect(player).to receive(:save_name).with('Computer')
        subject.save_name('Dave')
      end
    end

    describe '#save_move' do
      it 'saves move to Player object' do
        srand(0) # send 'Rock' to player 2 (Computer)
        expect(player).to receive(:save_move).with('Rock').twice
        subject.save_move('Rock', 1)
      end
    end

    describe '#determine_winner' do
      context 'Given random move always returns "Rock"' do

        before do
          srand(0)
          subject.save_move('Paper', 1)
        end

        it 'returns \'It\'s a draw!\' if the moves are the same' do
          allow(player).to receive(:move).and_return('Rock')
          subject.determine_winner
          expect(subject.result).to eq "It's a draw!"
        end

        it 'returns \'You\'re a winner baby!\' if the player wins' do
          allow(player).to receive(:move).and_return('Paper')
          allow(player).to receive(:move).and_return('Rock')
          subject.determine_winner
          expect(subject.result).to eq "You're a winner baby!"
        end

        it 'returns \'You lose!\' if the player loses' do
          allow(player).to receive(:move).and_return('Scissors')
          subject.determine_winner
          expect(subject.result).to eq "You lose!"
        end
      end
    end
  end

  context 'Multiplayer' do
    let(:subject) { described_class.new(2, player_class) }

    describe '#add_name' do
      it 'Passes names to the two Player objects' do
        expect(player).to receive(:save_name).with('Dave')
        expect(player).to receive(:save_name).with('Ben')
        subject.save_name('Dave', 'Ben')
      end
    end

    describe ''

  end

end
