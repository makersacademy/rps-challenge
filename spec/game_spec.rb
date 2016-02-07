require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) { double(:player, name: 'player 1')}
  let(:player_2) {double :player_2}

  it 'initializes with a player injected' do
    expect(game.player_1).to eq player_1
  end

  it 'initializes with winner as nil' do
    expect(game.winner).to eq nil
  end

  it 'initializes with a second player injected' do
    expect(game.player_2).to eq player_2
  end

  it 'decides winner using results method' do
    game.result(:Rock, :Scissors)
    expect(game.winner).to eq 'player 1'
  end

  it 'returns winner as :Draw if the game is a draw' do
    game.result(:Rock, :Rock)
    expect(game.winner).to eq :Draw
  end


end
