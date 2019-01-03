require 'rps_game'

describe RpsGame do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do
    it 'retrives the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrives the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  context 'when player choses rock' do
    it 'rock beats scissors' do
      expect(game.move('rock', 'scissors')).to eq RpsGame::P1_WINS
    end

    it 'rock beaten by paper' do
      expect(game.move('rock', 'paper')).to eq RpsGame::P2_WINS
    end
  end
  context 'when player choses paper' do
    # paper
    it 'paper beats rock' do
      expect(game.move('paper', 'rock')).to eq RpsGame::P1_WINS
    end

    it 'paper beaten by scissors' do
      expect(game.move('paper', 'scissors')).to eq RpsGame::P2_WINS
    end

  end

  context 'when player choses paper' do
    # scissors
    it 'scissors beats paper' do
      expect(game.move('scissors', 'paper')).to eq RpsGame::P1_WINS
    end

    it 'scissors beaten by rock' do
      expect(game.move('scissors', 'rock')).to eq RpsGame::P2_WINS
    end
  end

  # same move --> draw
  it 'draw' do
    ['rock', 'paper', 'scissors'].each do |m|
      expect(game.move(m, m)).to eq RpsGame::DRAW
    end
  end


  # wrong value(s)
  it 'supplied wrong move' do
    expect { game.move('foobar', 'rock') }.to raise_error("invalid move")
    expect { game.move('paper', 'inalid') }.to raise_error("invalid move")
    expect { game.move('foobar', 'invalid') }.to raise_error("invalid move")
  end

  moves = %w[rock paper scissors]
  it 'generates a random move' do
    expect(moves).to include(game.random_move)
  end
end
