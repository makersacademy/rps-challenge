require 'game'

describe Game do

  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  let(:computer) { double :computer}
  let(:player_class) { double :player_class }
  let(:random_move) { double :random_move, move: 'rock' }
  let(:random_move_class) { double :random_move, new: random_move }

  before() {
    allow(player_class).to receive(:new).with('Skaiste') { player1 }
    allow(player_class).to receive(:new).with('Seb') { player2 }
    allow(player_class).to receive(:new).with('Computer') { computer }
    @game = described_class.new(player1: 'Skaiste', player2: 'Computer', player: player_class)
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

  describe 'set_mode' do
    it 'sets mode' do
      @game.set_mode('standard')
      expect(@game.mode).to eq 'standard'
    end
    it 'sets logic accordingly' do
      @game.set_mode('spock')
      expect(@game.logic).to eq Logic::SPOCK
    end
  end

  describe 'set_multiplayer' do
    it 'sets player1' do
      @game.set_multiplayer(true)
      expect(@game.multiplayer).to eq true
    end
  end

  describe 'set_player1' do
    it 'sets player1' do
      @game.set_player1('Skaiste')
      expect(@game.player1).to eq player1
    end
  end

  describe 'set_player2' do
    it 'sets player2' do
      @game.set_player1('Seb')
      expect(@game.player1).to eq player2
    end
  end

  describe 'computer move' do
    it 'adds computer move' do
      @game.computer_move(random_move_class: random_move_class)
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
