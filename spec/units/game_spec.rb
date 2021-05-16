require 'game'

describe Game do
  subject(:game) { described_class.new(player1, opponent) }
  let(:player1) { double :player1 }
  let(:opponent) { double :opponent }

  it 'returns the first player' do
    expect(game.player1).to eq player1
  end

  it 'returns the second player' do
    expect(game.opponent).to eq opponent
  end

  context 'game over' do
    describe '#result' do
     
      it 'returns win if player: paper vs computer: rock' do
        allow(player1).to receive(:player_choice).and_return('paper')
        allow(opponent).to receive(:opponent_choice).and_return('rock')
        expect(game.result('paper', 'rock')).to eq 'win'
      end

      it 'returns lose if player: paper vs computer: scissors' do
        allow(player1).to receive(:player_choice).and_return('paper')
        allow(opponent).to receive(:opponent_choice).and_return('scissors')
        expect(game.result('paper', 'scissors')).to eq 'lose'
      end

      it 'returns draw if player: paper vs computer: scissors' do
        allow(player1).to receive(:player_choice).and_return('paper')
        allow(opponent).to receive(:opponent_choice).and_return('paper')
        expect(game.result('paper', 'paper')).to eq 'draw'
      end

    end
  end  
end
