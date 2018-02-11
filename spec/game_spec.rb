require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double 'Hannah' }

  it 'instantiates with a player' do
    expect(game.player).to eq player
  end

  describe '#result' do

    context 'when player chooses rock' do

      it 'returns "draw" if computer also chooses rock' do
        expect(game.result('Rock', 'Rock')).to eq 'draw'
      end

      it 'returns "win" if computer chooses scissors' do
        expect(game.result('Rock', 'Scissors')).to eq 'win'
      end

      it 'returns "lose" if computer chooses paper' do
        expect(game.result('Rock', 'Paper')).to eq 'lose'
      end

    end

    context 'when player chooses paper' do

      it 'returns "draw" if computer also chooses paper' do
        expect(game.result('Paper', 'Paper')).to eq 'draw'
      end

      it 'returns "win" if computer chooses rock' do
        expect(game.result('Paper', 'Rock')).to eq 'win'
      end

      it 'returns "lose" if computer chooses scissors' do
        expect(game.result('Paper', 'Scissors')).to eq 'lose'
      end

    end

    context 'when player chooses scissors' do

      it 'returns "draw" if computer also chooses scissors' do
        expect(game.result('Scissors', 'Scissors')).to eq 'draw'
      end

      it 'returns "win" if computer chooses paper' do
        expect(game.result('Scissors', 'Paper')).to eq 'win'
      end

      it 'returns "lose" if computer chooses rock' do
        expect(game.result('Scissors', 'Rock')).to eq 'lose'
      end

    end

  end

end
