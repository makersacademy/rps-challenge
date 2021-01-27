require 'game'

describe Game do
  subject(:game) { described_class.new(players: [computer, player]) }

  describe '#result' do

    context 'the computer wins' do
      let(:computer) { 'rock' }
      let(:player) { 'scissors' }

      it 'returs lose for the player' do
        expect(game.result).to eq 'lose'
      end
    end

    context 'there is a draw' do
      let(:computer) { 'paper' }
      let(:player) { 'paper' }

      it 'returns draw if the computer and player chose the same weapon' do
        expect(game.result).to eq 'draw'
      end
    end

    context 'the player wins' do
      let(:player) { 'rock' }
      let(:computer) { 'scissors' }

      it 'returs win for the player' do
        expect(game.result).to eq 'win'
      end
    end

  end
end
