require 'game'

describe Game do
  let(:player) { double :player, move: 'Bulbasaur' }
  let(:computer) { double :computer, name: 'Rival', move: 'Bulbasaur' }
  let(:playerKlass) { double :playerKlass, new: player }
  let(:computerKlass) { double :computerKlass, new: computer }

  context 'Single player' do
    let(:subject) { described_class.new(1, playerKlass, computerKlass) }

    describe '#initialize' do
      it 'instantiates a new player object' do
        expect(playerKlass).to receive(:new).and_return(player)
        Game.new(1, playerKlass, computerKlass)
      end

      it 'instantiates a new computer object' do
        expect(computerKlass).to receive(:new).and_return(computer)
        Game.new(1, playerKlass, computerKlass)
      end
    end

    describe '#save_name' do
      it 'saves name to Player object' do
        expect(player).to receive(:save_name).with('Dave')
        subject.save_name('Dave')
      end
    end

    describe '#save_move' do
      it 'saves move to Player object' do
        srand(0) # send 'Bulbasaur' to player 1 (Rival)
        expect(player).to receive(:save_move).with('Bulbasaur')
        subject.save_move('Bulbasaur', 1)
      end
    end

    describe '#determine_winner' do
      context 'Given Rival (player 2) always returns "Bulbasaur"' do

        before do
          allow(player).to receive(:name).and_return('Dave')
          allow(player2).to receive(:name).and_return('Rival')
        end

        it 'returns \'It was not very effective...\' if the moves are the same' do
          subject.determine_winner
          expect(subject.result).to eq "It was not very effective..."
        end

        it 'returns \'Dave used a super effective move!\' if the player wins' do
          allow(player).to receive(:move).and_return('Charmander')
          subject.determine_winner
          expect(subject.result).to eq "Dave used a super effective move!"
        end

        it 'returns \'Rival used a super effective move!\' if the player loses' do
          allow(player).to receive(:move).and_return('Squirtle')
          subject.determine_winner
          expect(subject.result).to eq "Rival used a super effective move!"
        end
      end
    end
  end

  context 'Multiplayer' do
    let(:subject) { described_class.new(2, playerKlass, computerKlass) }

    describe '#initialize' do
      it 'initializes two new player objects' do
        expect(playerKlass).to receive(:new).twice
        Game.new(2, playerKlass, computerKlass)
      end
    end

    describe '#save_name' do
      it 'Passes names to the two Player objects' do
        expect(player).to receive(:save_name).twice
        subject.save_name('Dave', 'Ben')
      end
    end

    describe '#save_move' do
      it 'Passes selected move to player 2 object' do
        expect(player).to receive(:save_move)
        subject.save_move('Squirtle', 2)
      end
    end
    # Note: all other methods function the same as for single-player
  end
end
