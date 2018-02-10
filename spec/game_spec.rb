require 'game'

describe Game do

  let(:game_class) {Game}
  let(:game) {game_class.create(first_player)}
  let(:first_player) {double('Player 1', name: 'Marcus', move: 'rock')}
  let(:second_player) {double('Player 2', name: 'Gamblore', move: 'scissors')}

  describe '#initialize' do
    it 'Instantiates game with player' do
      expect(game.player_1.name).to eq 'Marcus'
    end
    it 'Instantiates game with second player' do
      expect(game.player_2.name).to eq 'Gamblore'
    end
  end

  it 'Stores an instance of game in a class variable' do
    expect(game_class.instance).to be_instance_of game_class
  end

  describe '#choose_move' do
    it 'allows player 1 to choose a move' do
      game.choose_move(first_player, 'rock')
      expect(first_player).to receive(:move=).with 'rock'
    end
  end

  describe '#calculate_winner' do
    it 'calculates a winner based on move choices' do
      game.calculate_winner
      expect(game.winner.name).to eq 'Marcus'
    end
  end

  describe '#random_move' do
    it 'randomly assigns a move if one is not given' do
      # allow(game).to receive(random_move).and return
      expect(game.random_move).to eq 'rock'
    end
  end

end
