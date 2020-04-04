require 'game'

describe Game do
  let(:player1) { double(:player, name: 'Phil') }
  let(:player2) { double(:player, name: 'Su') }
  let(:player_class) { double(:player_class) }

  subject do
    Game.new('Phil', 'Su', player_class)
  end

  before do
    allow(player_class).to receive(:new).and_return(player1, player2)
  end

  it 'has to be created by specifying two player names' do
    expect(Game).to respond_to(:new).with(3).argument
  end

  it 'tells you who is player 1' do
    expect(subject.player1).to eq(player1)
  end

  it 'tells you who is player 2' do
    expect(subject.player2).to eq(player2)
  end

  it 'resolves a player move' do
    expect(subject).to respond_to(:resolve_move).with(2).argument
  end

  context 'player moves' do
    it 'only accepts valid moves from player 1' do
      expect { subject.resolve_move("invalid move", Game::SCISSORS) }.to raise_error(ArgumentError, 'invalid player move')
    end

    it 'only accepts valid moves from player 2' do
      expect { subject.resolve_move(Game::SCISSORS, "invalid move") }.to raise_error(ArgumentError, 'invalid player move')
    end

    context 'player 1 plays rock' do
      it 'beats scissors' do
        expect(subject.resolve_move(Game::ROCK, Game::SCISSORS)).to eq 'Phil wins - rock blunts scissors'
      end

      it 'draws with rock' do
        expect(subject.resolve_move(Game::ROCK, Game::ROCK)).to eq "It's a draw - both players chose rock"
      end

      it 'loses to paper' do
        expect(subject.resolve_move(Game::ROCK, Game::PAPER)).to eq 'Su wins - paper wraps rock'
      end
    end

    context 'player 1 plays paper' do
      it 'beats rock' do
        expect(subject.resolve_move(Game::PAPER, Game::ROCK)).to eq 'Phil wins - paper wraps rock'
      end

      it 'draws with paper' do
        expect(subject.resolve_move(Game::PAPER, Game::PAPER)).to eq "It's a draw - both players chose paper"
      end

      it 'loses to scissors' do
        expect(subject.resolve_move(Game::PAPER, Game::SCISSORS)).to eq 'Su wins - scissors cut paper'
      end
    end

    context 'player plays scissors' do
      it 'beats paper' do
        expect(subject.resolve_move(Game::SCISSORS, Game::PAPER)).to eq 'Phil wins - scissors cut paper'
      end

      it 'draws with scissors' do
        expect(subject.resolve_move(Game::SCISSORS, Game::SCISSORS)).to eq "It's a draw - both players chose scissors"
      end

      it 'loses to rock' do
        expect(subject.resolve_move(Game::SCISSORS, Game::ROCK)).to eq 'Su wins - rock blunts scissors'
      end
    end
  end
end
