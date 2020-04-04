require 'game'

describe Game do
  let(:player) { double(:player1, name: 'Phil') }
  let(:player_class) { double(:player_class, :new => player) }

  subject do
    Game.new("Phil", player_class)
  end

  it 'has to be created by specifying a player name' do
    expect(Game).to respond_to(:new).with(2).argument
  end

  it 'tells you who is playing' do
    expect(subject.player).to eq(player)
  end

  it 'resolves a player move' do
    expect(subject).to respond_to(:resolve_move).with(1).argument
  end

  context 'player moves' do
    it 'only accepts valid moves' do
      expect { subject.resolve_move("invalid move") }.to raise_error(ArgumentError, 'invalid player move')
    end

    context 'player plays rock' do
      it 'beats scissors' do
        allow(subject).to receive(:opponent_move).and_return(Game::SCISSORS)
        expect(subject.resolve_move(Game::ROCK)).to eq 'Phil wins - rock blunts scissors'
      end

      it 'draws with rock' do
        allow(subject).to receive(:opponent_move).and_return(Game::ROCK)
        expect(subject.resolve_move(Game::ROCK)).to eq "It's a draw - both players chose rock"
      end

      it 'loses to paper' do
        allow(subject).to receive(:opponent_move).and_return(Game::PAPER)
        expect(subject.resolve_move(Game::ROCK)).to eq 'Phil loses - paper wraps rock'
      end
    end

    context 'player plays paper' do
      it 'beats rock' do
        allow(subject).to receive(:opponent_move).and_return(Game::ROCK)
        expect(subject.resolve_move(Game::PAPER)).to eq 'Phil wins - paper wraps rock'
      end

      it 'draws with paper' do
        allow(subject).to receive(:opponent_move).and_return(Game::PAPER)
        expect(subject.resolve_move(Game::PAPER)).to eq "It's a draw - both players chose paper"
      end

      it 'loses to scissors' do
        allow(subject).to receive(:opponent_move).and_return(Game::SCISSORS)
        expect(subject.resolve_move(Game::PAPER)).to eq 'Phil loses - scissors cut paper'
      end
    end

    context 'player plays scissors' do
      it 'beats paper' do
        allow(subject).to receive(:opponent_move).and_return(Game::PAPER)
        expect(subject.resolve_move(Game::SCISSORS)).to eq 'Phil wins - scissors cut paper'
      end

      it 'draws with scissors' do
        allow(subject).to receive(:opponent_move).and_return(Game::SCISSORS)
        expect(subject.resolve_move(Game::SCISSORS)).to eq "It's a draw - both players chose scissors"
      end

      it 'loses to rock' do
        allow(subject).to receive(:opponent_move).and_return(Game::ROCK)
        expect(subject.resolve_move(Game::SCISSORS)).to eq 'Phil loses - rock blunts scissors'
      end
    end
  end
end
