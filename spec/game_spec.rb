require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe 'should determine the winner correctly' do
    context 'player1.move = rock' do
      before do
        allow(player1).to receive(:move).and_return "rock"
      end
      it 'should determine player1 wins if player2 selects scissors' do
        allow(player2).to receive(:move).and_return "scissors"
        game = Game.new(player1, player2)
        expect(game.find_winner).to eq player1
      end

      it 'should determine player2 the winner if player2 paper' do
        allow(player2).to receive(:move).and_return "paper"
        game = Game.new(player1, player2)
        expect(game.find_winner).to eq player2
      end

      it 'should determine a draw if player2 selects rock' do
        allow(player2).to receive(:move).and_return "rock"
        game = Game.new(player1, player2)
        expect(game.find_winner).to eq "draw"
      end
    end

    context 'player1.move = paper' do
      before do
        allow(player1).to receive(:move).and_return "paper"
      end
      it 'should determine player1 wins if player2 selects rock' do
        allow(player2).to receive(:move).and_return "rock"
        game = Game.new(player1, player2)
        expect(game.find_winner).to eq player1
      end

      it 'should determine player2 the winner if player2 selects scissors' do
        allow(player2).to receive(:move).and_return "scissors"
        game = Game.new(player1, player2)
        expect(game.find_winner).to eq player2
      end

      it 'should determine a draw if player2 selects paper' do
        allow(player2).to receive(:move).and_return "paper"
        game = Game.new(player1, player2)
        expect(game.find_winner).to eq "draw"
      end
    end

    context 'player1.move = scissors' do
      before do
        allow(player1).to receive(:move).and_return "scissors"
      end
      it 'should determine player1 wins if player2 selects paper' do
        allow(player2).to receive(:move).and_return "paper"
        game = Game.new(player1, player2)
        expect(game.find_winner).to eq player1
      end

      it 'should determine player2 the winner if player2 selects rock' do
        allow(player2).to receive(:move).and_return "rock"
        game = Game.new(player1, player2)
        expect(game.find_winner).to eq player2
      end

      it 'should determine a draw if player2 selects scissors' do
        allow(player2).to receive(:move).and_return "scissors"
        game = Game.new(player1, player2)
        expect(game.find_winner).to eq "draw"
      end
    end
  end
end
