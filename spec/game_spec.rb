describe Game do
  
  subject(:game) {described_class.new(1, player_class1, player_class2)}
  let(:player_class1) {double :player_class, new: player1}
  let(:player_class2) {double :player_class, new: player2}
  let(:player1) {double :player, name: 'Paul'}
  let(:player2) {double :player, name: 'John'}

  context '#no_of_players' do
    it 'sets no_of_players upon initialization' do
      expect(game.no_of_players).to eq(1)
    end
  end

  context '#set_players' do
    it 'sets players' do
      game.set_players('Paul', 'John')
      expect(game.player1).to eq(player1)
      expect(game.player2).to eq(player2)
    end
  end

  context '#random_choice' do
    it 'returns one of the choices at random' do
      expect(['ROCK', 'PAPER', 'SCISSORS']).to include(game.random_choice)
    end
  end

  context '#current_player' do
    it 'is set to player 1 when players are set' do
      game.set_players('Paul', 'John')
      expect(game.current_player).to eq(player1)
    end
  end

  context '#current_opponent' do
    it 'returns the opponent of the current turn player' do
      game.set_players('Paul', 'John')
      expect(game.current_opponent).to eq(player2)
    end
  end

  context '#end_turn' do
    it 'ends current players turn and sets current turn to other player' do
      game.set_players('Paul', 'John')
      expect{game.end_turn}.to change{game.current_player}.to eq(player2)
    end
  end

  context '#check_winner' do
    it 'returns the winner of the game' do
      game.set_players('Paul', 'John')
      allow(player1).to receive(:choice) {'ROCK'}
      allow(player2).to receive(:choice) {'SCISSORS'}
      expect(game.check_winner).to eq(player1)
    end
  end

end