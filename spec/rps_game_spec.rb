require 'rps_game'

describe RpsGame do
  subject(:game) { described_class.new }

  # rock
  it 'rock beats scissors' do
    expect(game.move('rock', 'scissors')).to eq RpsGame::P1_WINS
  end

  it 'rock beaten by paper' do
    expect(game.move('rock', 'paper')).to eq RpsGame::P2_WINS
  end

  # paper
  it 'paper beats rock' do
    expect(game.move('paper', 'rock')).to eq RpsGame::P1_WINS
  end

  it 'paper beaten by scissors' do
    expect(game.move('paper', 'scissors')).to eq RpsGame::P2_WINS
  end
end
