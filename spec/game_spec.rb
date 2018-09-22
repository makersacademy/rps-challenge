require 'game'

describe Game do
  let(:dwayne_johnson) { double :player, move: 'rock' }
  let(:scissor_sisters) { double :player, move: 'scissors' }
  let(:shakespeare) { double :player, move: 'paper' }
  let(:rps) { described_class.new(dwayne_johnson, scissor_sisters) }

  let(:no_move_1) { double :player1, move: nil }
  let(:no_move_2) { double :player2, move: nil }
  let(:rps_no_move) { described_class.new(no_move_1, no_move_2) }

  describe '#player1' do
    it 'returns the player 1 object' do
      expect(rps.player1).to eq dwayne_johnson
    end
  end

  describe '#player2' do
    it 'returns the player 2 object' do
      expect(rps.player2).to eq scissor_sisters
    end
  end

  describe '#winner' do
    it 'raises an error if either player does not have a move' do
      expect{ rps_no_move.winner }.to raise_error 'Players have not made a move'
    end

    context 'testing all 9 RPS outcomes' do
      it 'outputs player1 when player1.move is rock and player2.move is scissors' do
        expect(rps.winner).to eq dwayne_johnson
      end

      it 'outputs player1 when player1.move is scissors and player2.move is paper' do
        game = Game.new(scissor_sisters, shakespeare)
        expect(game.winner).to eq scissor_sisters
      end

      it 'outputs player1 when player1.move is paper and player2.move is rock' do
        game = Game.new(shakespeare, dwayne_johnson)
        expect(game.winner).to eq shakespeare
      end

      it 'outputs player2 when player1.move is paper and player2.move is scissors' do
        game = Game.new(shakespeare, scissor_sisters)
        expect(game.winner).to eq scissor_sisters
      end

      it 'outputs player2 when player1.move is rock and player2.move is paper' do
        game = Game.new(dwayne_johnson, shakespeare)
        expect(game.winner).to eq shakespeare
      end

      it 'outputs player2 when player1.move is scissors and player2.move is rock' do
        game = Game.new(scissor_sisters, dwayne_johnson)
        expect(game.winner).to eq dwayne_johnson
      end

      it 'outputs nil when both moves are rock' do
        game = Game.new(dwayne_johnson, dwayne_johnson)
        expect(game.winner).to eq nil
      end

      it 'outputs nil when both moves are scissors' do
        game = Game.new(scissor_sisters, scissor_sisters)
        expect(game.winner).to eq nil
      end

      it 'outputs nil when both moves are paper' do
        game = Game.new(shakespeare, shakespeare)
        expect(game.winner).to eq nil
      end
    end
  end
end
