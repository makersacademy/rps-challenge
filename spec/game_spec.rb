require 'game'

describe Game do
  let(:player1) { double :player, move: 'Bulbasaur' }
  let(:player2) { double :player, move: 'Bulbasaur' }

  context 'Single player' do
    let(:subject) { described_class.new(1, player1, player2) }

    describe '#save_name' do
      it 'saves name to Player object' do
        expect(player1).to receive(:save_name).with('Dave')
        expect(player2).to receive(:save_name).with('Computer')
        subject.save_name('Dave')
      end
    end

    describe '#save_move' do
      it 'saves move to Player object' do
        srand(0) # send 'Bulbasaur' to player 2 (Computer)
        expect(player1).to receive(:save_move).with('Bulbasaur')
        expect(player2).to receive(:save_move).with('Bulbasaur')
        subject.save_move('Bulbasaur', 1)
      end
    end

    describe '#determine_winner' do
      context 'Given Computer (player 2) always returns "Bulbasaur"' do
        it 'returns \'It was not very effective...\' if the moves are the same' do
          subject.determine_winner
          expect(subject.result).to eq "It was not very effective..."
        end

        it 'returns \'Dave used a super effective move!\' if the player wins' do
          allow(player1).to receive(:move).and_return('Charmander')
          allow(player1).to receive(:name).and_return('Dave')
          allow(player2).to receive(:name).and_return('Computer')
          subject.determine_winner
          expect(subject.result).to eq "Dave used a super effective move!"
        end

        it 'returns \'Computer used a super effective move!\' if the player loses' do
          allow(player1).to receive(:move).and_return('Squirtle')
          allow(player1).to receive(:name).and_return('Dave')
          allow(player2).to receive(:name).and_return('Computer')
          subject.determine_winner
          expect(subject.result).to eq "Computer used a super effective move!"
        end
      end
    end
  end

  context 'Multiplayer' do
    let(:subject) { described_class.new(2, player1, player2) }

    describe '#add_name' do
      it 'Passes names to the two Player objects' do
        expect(player1).to receive(:save_name).with('Dave')
        expect(player2).to receive(:save_name).with('Ben')
        subject.save_name('Dave', 'Ben')
      end
    end

    describe '#save_move' do
      it 'Passes selected move to player 2 object' do
        expect(player2).to receive(:save_move).with('Squirtle')
        subject.save_move('Squirtle', 2)
      end
    end
    # Note: all other methods function the same as for single-player
  end
end
