require 'game'

describe 'Game' do
  subject(:game) { Game.new(player) }
  let(:player) { double :player }
  
  it 'returns player names' do
    expect(game.player).to eq player
  end

  it 'gives correct outcome' do
    expect(game.outcome('Rock', 'Scissors')).to eq :win
    expect(game.outcome('Rock', 'Rock')).to eq :draw
    expect(game.outcome('Rock', 'Paper')).to eq :lose
  end

  it 'keeps score' do
    game.outcome('Rock', 'Scissors')
    game.outcome('Rock', 'Scissors')
    expect(game.tally[:player]).to eq 2
  end
end
