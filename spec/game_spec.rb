require 'game'

describe Game do
  let(:player) { "Dusty" }
  subject(:game) {Game.new(player, 'rock')}
  

  it 'when initialized it has the correct number of arguments' do
    expect(Game.new(player, 'rock')).to be_a(Game) 
  end
  it 'can return given choice' do
    expect(game.choice).to eq 'ROCK'
  end
  it 'can return given player name' do
    expect(game.player).to eq 'Dusty'
  end
  it 'returns win state' do 
    expect(game.won?).to be_truthy
  end

end