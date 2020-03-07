require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }
  let(:start_point) { Game::START }

  it 'inputs a name player' do
    expect(game.player).to eq player
  end

  it 'displays your starting points' do
    expect(game.player_points).to eq start_point
  end

  it 'computer choosing rocks' do
    allow(game).to receive(:latest_comp_move).and_return('rock')
    expect(game.latest_comp_move).to eq 'rock'
  end

  it 'expects a draw' do
    player_move = game.play_rock
    allow(game).to receive(:latest_comp_move).and_return("rock")
    expect(game.result(player_move)).to eq "It is a draw."
  end

  it 'expects user to win' do
    player_move = game.play_rock
    allow(game).to receive(:latest_comp_move).and_return("scissors")
    expect(game.result(player_move)).to eq "#{player} you won!"
  end

  it 'expects user to loose' do
    player_move = game.play_rock
    allow(game).to receive(:latest_comp_move).and_return("paper")
    expect(game.result(player_move)).to eq "#{player} you lost."
  end
end
