require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player, name: 'Olly' }
  let(:player2) { double :player, name: 'monster' }

  it 'initializes with 2 players' do
    expect(game.player1.name).to eq 'Olly'
    expect(game.player2.name).to eq 'monster'
  end

  describe '#winner' do
    context 'P1 wins' do
      let(:player1) { double :player, name: 'Olly', move: 'Rock'}
      let(:player2) { double :player, name: 'monster', move: 'Scissors' }
  
      it 'p1 selects rock, p2 selects scissors' do
        expect(game.winner(game.player1.move, game.player2.move)).to eq player1.name
      end
    end

    context 'P2 wins' do
      let(:player1) { double :player, name: 'Olly', move: 'Rock'}
      let(:player2) { double :player, name: 'monster', move: 'Paper' }
  
      it 'p1 selects rock, p2 selects paper' do
        expect(game.winner(game.player1.move, game.player2.move)).to eq player2.name
      end
    end

    context 'It\'s a tie' do
      let(:player1) { double :player, name: 'Olly', move: 'Rock'}
      let(:player2) { double :player, name: 'monster', move: 'Rock' }
  
      it 'p1 selects rock, p2 selects rock' do
        expect(game.winner(game.player1.move, game.player2.move)).to eq "tie"
      end
    end


  end

end