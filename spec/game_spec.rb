require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :player}
  
  
  it 'allows to create a new player' do
    expect(game.player).to eq player
  end

  it 'allows to create a cpu' do
    expect(game.computer).to eq computer
  end

  it 'allows to be an instance' do
    expect(Game.create(player, computer)).to be_a Game
  end

  it 'allows to create an instance of the game' do
    Game.create(player, computer)
    expect(Game.instance).to be_a Game
  end

  it 'returns a winner' do
    allow(player).to receive(:weapon) { :rock }
    allow(computer).to receive(:weapon) { :scissors }
    expect(game.win?).to eq 'You win'
  end

  it 'returns a draw' do
    allow(player).to receive(:weapon) { :rock }
    allow(computer).to receive(:weapon) { :rock }
    expect(game.draw?).to eq "It's a draw"
  end
end
