require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1, name: 'Rebecca', move: 'Rock' }
  let(:player_2) { double :player_2, move: 'Paper' }
  let(:player_3) { double :player_3, move: 'Scissors' }

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

  context '#result' do
    it 'Rock beats Scissors' do
      expect(game.result(player_1.move, player_3.move)).to eq "Rebecca loses"
    end
    it 'Paper beats Rock' do
      expect(game.result(player_1.move, player_1.move)).to eq "It's a Draw"
    end
    it 'Scissors beats Paper' do
      expect(game.result(player_1.move,
         player_2.move)).to eq "Rebecca wins"
    end
  end

  context 'when player choses rock' do
    it 'rock beats scissors' do
      expect(game.move('rock', 'scissors')).to eq Game::P1_WINS
    end

    it 'rock beaten by paper' do
      expect(game.move('rock', 'paper')).to eq Game::P2_WINS
    end
  end
  context 'when player choses paper' do
    # paper
    it 'paper beats rock' do
      expect(game.move('paper', 'rock')).to eq Game::P1_WINS
    end

    it 'paper beaten by scissors' do
      expect(game.move('paper', 'scissors')).to eq Game::P2_WINS
    end

  end

  context 'when player choses paper' do
    # scissors
    it 'scissors beats paper' do
      expect(game.move('scissors', 'paper')).to eq Game::P1_WINS
    end

    it 'scissors beaten by rock' do
      expect(game.move('scissors', 'rock')).to eq Game::P2_WINS
    end
  end

  # same move --> draw
  it 'draw' do
    ['rock', 'paper', 'scissors'].each do |m|
      expect(game.move(m, m)).to eq Game::DRAW
    end
  end

  # wrong value(s)
  it 'supplied wrong move' do
    expect { game.move('foobar', 'rock') }.to raise_error("invalid move")
    expect { game.move('paper', 'inalid') }.to raise_error("invalid move")
    expect { game.move('foobar', 'invalid') }.to raise_error("invalid move")
  end
end
