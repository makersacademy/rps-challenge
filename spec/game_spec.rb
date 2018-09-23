require 'game'

describe Game do

  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:computer) { double :computer}
  let(:player_class) { double :player_class }
  let(:random_move) { double :random_move, move: 'rock' }

  before() {
    allow(player_class).to receive(:new).with('Skaiste') { player1 }
    allow(player_class).to receive(:new).with('Seb') { player2 }
    allow(player_class).to receive(:new).with('Computer') { computer }
    @game = described_class.new('Skaiste', 'Computer', player_class)
  }

  describe 'initialize' do
    it 'initializes with first player' do
      expect(@game.player1).to eq player1
    end
    it 'initializes with second player' do
      expect(@game.player2).to eq computer
    end
    it 'initializes with multiplayer set to false' do
      expect(@game.multiplayer).to eq false
    end
    it 'initializes with empty moves' do
      expect(@game.moves).to be_empty
    end
  end

  describe 'add_move' do
    it 'adds first move' do
      @game.add_move('rock')
      expect(@game.moves).to include('rock')
    end
    it 'adds second move' do
      @game.add_move('rock')
      @game.add_move('paper')
      expect(@game.moves).to include('paper')
    end
  end

  describe 'show moves' do
    it 'first_move' do
      @game.add_move('rock')
      expect(@game.first_move).to eq 'rock'
    end
    it 'second_move' do
      @game.add_move('rock')
      @game.add_move('paper')
      expect(@game.second_move).to eq 'paper'
    end
  end

  describe 'computer move' do
    it 'adds computer move' do
      @game.computer_move(random_move)
      expect(@game.moves[0]).to eq random_move.move
    end
  end

  describe 'winner' do
    it 'returns the winner' do
      @game.add_move('rock')
      @game.add_move('paper')
      expect(@game.winner).to eq computer
    end
  end

end
