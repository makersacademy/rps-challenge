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

  
end
