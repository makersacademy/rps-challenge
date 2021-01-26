require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player, name: "Kelly" }
  let(:opponent) { double :opponent, choice: "Rock" }

  before do
    game.opponent = opponent
  end

  it 'instantiates with a player' do
    expect(game.player.name).to eq "Kelly"
  end

  it 'Wins a game' do
    allow(player).to receive(:choice).and_return("Paper")
    game.win_lose_draw
    expect(game.winner).to eq(:player)
  end

  it 'Draw a game' do
    allow(player).to receive(:choice).and_return("Rock")
    game.win_lose_draw
    expect(game.winner).to eq(:draw)
  end

  it 'Loses a game' do
    allow(player).to receive(:choice).and_return("Scissors")
    game.win_lose_draw
    expect(game.winner).to eq(:opponent)
  end
end
