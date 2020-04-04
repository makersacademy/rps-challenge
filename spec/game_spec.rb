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

  it 'only accepts valid moves' do
    expect { subject.store_move('invalid_move') }.to raise_error(ArgumentError, 'invalid player move')
  end

  it 'tells you if the moves are complete' do
    subject.store_move(Game::ROCK)
    subject.store_move(Game::SCISSORS)
    expect(subject.moves_complete?).to eq true
  end

  it 'tells you if the moves are not complete' do
    subject.store_move(Game::SCISSORS)
    expect(subject.moves_complete?).to eq false
  end

  context 'player moves' do
    context 'player 1 plays rock' do
      it 'beats scissors' do
        subject.store_move(Game::ROCK)
        subject.store_move(Game::SCISSORS)
        expect(subject.resolve_moves).to eq 'Phil wins - rock blunts scissors'
      end

      it 'draws with rock' do
        subject.store_move(Game::ROCK)
        subject.store_move(Game::ROCK)
        expect(subject.resolve_moves).to eq "It's a draw - both players chose rock"
      end

      it 'loses to paper' do
        subject.store_move(Game::ROCK)
        subject.store_move(Game::PAPER)
        expect(subject.resolve_moves).to eq 'Su wins - paper wraps rock'
      end
    end

    context 'player 1 plays paper' do
      it 'beats rock' do
        subject.store_move(Game::PAPER)
        subject.store_move(Game::ROCK)
        expect(subject.resolve_moves).to eq 'Phil wins - paper wraps rock'
      end

      it 'draws with paper' do
        subject.store_move(Game::PAPER)
        subject.store_move(Game::PAPER)
        expect(subject.resolve_moves).to eq "It's a draw - both players chose paper"
      end

      it 'loses to scissors' do
        subject.store_move(Game::PAPER)
        subject.store_move(Game::SCISSORS)
        expect(subject.resolve_moves).to eq 'Su wins - scissors cut paper'
      end
    end

    context 'player plays scissors' do
      it 'beats paper' do
        subject.store_move(Game::SCISSORS)
        subject.store_move(Game::PAPER)
        expect(subject.resolve_moves).to eq 'Phil wins - scissors cut paper'
      end

      it 'draws with scissors' do
        subject.store_move(Game::SCISSORS)
        subject.store_move(Game::SCISSORS)
        expect(subject.resolve_moves).to eq "It's a draw - both players chose scissors"
      end

      it 'loses to rock' do
        subject.store_move(Game::SCISSORS)
        subject.store_move(Game::ROCK)
        expect(subject.resolve_moves).to eq 'Su wins - rock blunts scissors'
      end
    end
  end
end
