require './lib/rules'
require './lib/player'

describe Rules do
  def player(move)
    instance_double('Player', chosen_move: move)
  end

  it 'has a list of valid moves' do
    expect(subject.valid_moves).to eq [:rock, :paper, :scissors]
  end

  context 'rock beats scissors' do
    it 'player 1 wins' do
      player1 = player(:rock)
      player2 = player(:scissors)
      expect(subject.winner(player1, player2)).to be player1
    end

    it 'player 2 wins' do
      player2 = player(:rock)
      player1 = player(:scissors)
      expect(subject.winner(player1, player2)).to be player2
    end
  end

  context 'paper beats rock' do
    it 'player 1 wins' do
      player1 = player(:paper)
      player2 = player(:rock)
      expect(subject.winner(player1, player2)).to be player1
    end

    it 'player 2 wins' do
      player2 = player(:paper)
      player1 = player(:rock)
      expect(subject.winner(player1, player2)).to be player2
    end
  end

  context 'scissors beats paper' do
    it 'player 1 wins' do
      player1 = player(:scissors)
      player2 = player(:paper)
      expect(subject.winner(player1, player2)).to be player1
    end

    it 'player 2 wins' do
      player2 = player(:scissors)
      player1 = player(:paper)
      expect(subject.winner(player1, player2)).to be player2
    end
  end

  context 'draw' do
    it 'returns nil' do
      player1 = player(:scissors)
      player2 = player(:scissors)
      expect(subject.winner(player1, player2)).to be_nil
    end
  end
end