require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player, name: "Kelly"}
  let(:opponent) { double :opponent, choice: "Rock" }

  #Unsure about this test
  it 'instantiates with a player' do
    expect(game.player.name).to eq "Kelly"
  end

  it 'Wins a game' do
    allow(game).to receive(:win_lose_draw).and_return(player.name)
    expect(game.win_lose_draw).to eq(player.name)
  end

  it 'Draw a game' do
    allow(game).to receive(:win_lose_draw).and_return('Draw')
    expect(game.win_lose_draw).to eq('Draw')
  end

  it 'Loses a game' do
    allow(game).to receive(:win_lose_draw).and_return("Computer")
    expect(game.win_lose_draw).to eq("Computer")
  end
end
