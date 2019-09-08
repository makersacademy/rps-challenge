require './lib/repository'

describe Repository do
  subject    { Repository.new }
  let(:game) { instance_double('Game', name: 'game name') }

  context 'players' do
    let(:player) { instance_double('Player', id: 'player id') }

    before :each do
      subject.add_player(player)
    end

    it 'can add a player' do
      expect(subject.player('player id')).to be player
    end

    it 'can return all players' do
      expect(subject.all_players).to eq [player]
    end
  end

  context 'moves' do
    it 'can add a move' do
      move = double('Move')
      subject.add_move('player id', move)
      expect(subject.move('player id')).to be move
    end

    it 'can delete a move' do
      move = double('Move')
      subject.add_move('player id', move)
      subject.delete_move('player id')
      expect(subject.move('player id')).to be_nil
    end
  end

  context 'games' do
    it 'can add a game' do
      subject.add_game(game)
      expect(subject.game('game name')).to be game
    end

    it 'can return all games' do
      subject.add_game(game)
      expect(subject.all_games).to eq([game])
    end

    it 'can delete a game' do
      subject.add_game(game)
      subject.delete_game(game)
      expect(subject.all_games).to be_empty
    end
  end
end