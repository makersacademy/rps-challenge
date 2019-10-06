require 'game'

describe Game do

  let(:player1){ double :player, name: "Player1" }
  let(:player2){ double :player, name: "Player2"}
  let(:subject){ Game.new(player1, player2)}


    describe '#players' do

      it 'should return player 1' do
        expect(subject.player1).to eq player1
      end

      it 'should return player 2' do
        expect(subject.player2).to eq player2
      end

    end

    describe '#win condition' do

      it 'should return player1 wins' do
        allow(player1).to receive(:move).and_return('rock')
        allow(player2).to receive(:move).and_return('scissors')
        expect(subject.winner).to eq("#{player1.name} wins")
      end

      it 'should return player2 wins' do
        allow(player1).to receive(:move).and_return('paper')
        allow(player2).to receive(:move).and_return('scissors')
        expect(subject.winner).to eq("#{player1.name} wins")
      end

    end

      describe '#draw condition' do

        it 'should return draw' do
          allow(player1).to receive(:move).and_return('rock')
          allow(player2).to receive(:move).and_return('rock')
          expect(subject.winner).to eq("Draw")
        end

      end

    end
