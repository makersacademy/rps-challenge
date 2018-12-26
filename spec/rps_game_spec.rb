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

  # scissors
  it 'scissors beats paper' do
    expect(game.move('scissors', 'paper')).to eq RpsGame::P1_WINS
  end

  it 'scissors beaten by rock' do
    expect(game.move('scissors', 'rock')).to eq RpsGame::P2_WINS
  end

  # same move --> draw
  it 'draw' do
    ['rock', 'paper', 'scissors'].each do |m|
      expect(game.move(m, m)).to eq RpsGame::DRAW
    end
  end
end
