require 'game'

describe Game do

  let(:game_class) {Game}
  let(:game) {game_class.create(first_player, second_player)}
  let(:first_player) {double('Player 1', name: 'Marcus', move: 'rock')}
  let(:second_player) {double('Player 2', name: 'Gamblore', move: 'scissors')}

  let(:alternate_game) {game_class.create(first_player_loses, second_player)}
  let(:first_player_loses) {double('Player 1', name: 'Marcus', move: 'paper')}


  let(:first_player_draw) {double('Player 1', name: 'Marcus', move: 'rock')}
  let(:draw_game) {game_class.create(first_player_draw, second_player)}


  describe '#initialize' do
    it 'Instantiates game with player' do
      expect(game.player_1.name).to eq 'Marcus'
    end
    it 'Instantiates game with second player' do
      expect(game.player_2.name).to eq 'Gamblore'
    end
  end

  it 'Stores an instance of game in a class variable' do
    game
    expect(game_class.instance).to be_instance_of game_class
  end

  describe '#choose_move' do
    it 'allows player 1 to choose a move' do
      expect(first_player).to receive(:set_move).with 'rock'
      game.choose_move(first_player, 'rock')
    end

      describe '#random_move' do
        it 'assigns a random move if none is given' do
          allow(first_player).to receive(:set_move)
          expect(game).to receive(:random_move)
          game.choose_move(first_player)
        end
      end
  end

  describe '#calculate_winner' do
    it 'Player 1 wins based on move choices' do
      game.calculate_winner
      expect(game.winner).to eq first_player
    end

    it 'Player 2 wins based on move choices' do
      alternate_game.calculate_winner
      expect(alternate_game.winner).to eq second_player
    end

    it 'Draw' do
      draw_game.calculate_winner
      expect(game.winner).to eq nil
    end

  end

end
