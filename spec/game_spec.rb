require 'game'

describe Game do

  let(:player1) { double :player, name: 'Josh', selection: 'Scissors' }
  let(:player2) { double :player, name: 'Steph', selection: 'Paper' }
  let(:game) { described_class.new(player1, player2) }

  it 'inializes a game with two players' do
    expect(game.player1.name).to eq 'Josh'
    expect(game.player2.name).to eq 'Steph'
  end

  it 'determines the winner' do 
    expect(game.winner).to eq player1.name
  end

end
