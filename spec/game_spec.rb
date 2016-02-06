require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, computer)}
  # let(:player_1) {double (:player, name: 'player 1')}
  let(:player_1) { double(:player, name: 'player 1')}

  # let(:player).to_receive(:name).and_return("Zeshan")
  let(:computer) {double :computer}
  it 'initializes with a player injected' do
    expect(game.player_1).to eq player_1
  end

  it 'initializes with winner as nil' do
    expect(game.winner).to eq nil
  end

  it 'initializes with a computer injected' do
    expect(game.computer).to eq computer
  end

  it 'decides winner using RPS logic method' do
    game.rps_logic(:Rock, :Scissors)
    expect(game.winner).to eq 'Player 1'
  end

  it 'displays the result' do
    game.rps_logic(:Rock, :Scissors)
    expect(game.result).to eq 'player 1 won!'
  end


end
