require 'game'

describe Game do 
  subject(:game) { described_class.new(player)}
  let(:player) { double :player }
  let(:rock) { "Rock"}

  it 'It returns the player' do
    expect(game.players).to eq player
  end

  describe 'Returns the CPU hand' do

    context 'Player Picks Rock, CPU picks Rock' do
      it 'returns the CPU choice as Rock' do
        allow(game).to receive(:pick_cpu_hand).and_return(rock)
        expect(game.pick_cpu_hand).to eq rock
      end

      it 'returns the result after a game is complete' do
        allow(game).to receive(:pick_cpu_hand).and_return(rock)
        game.pick_cpu_hand
        expect(game.result).to eq 'Draw'
      end
    end

    xit 'CPU picks Paper' do
    end

    xit 'CPU picks Scissors' do
    end
  end



end