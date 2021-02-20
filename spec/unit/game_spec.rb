require 'game'

describe Game do
  let(:player_1) { instance_double('Player', :name => 'sandy') }
  let(:player_2) { instance_double('Player', :name => 'finn') }
  let(:my_game) { Game.new(player_1, player_2) }

  # it 'takes two players as parameters' do
  #   expect(Game).to respond_to(:new).with(2)
  # end

  describe '#players' do
    it 'knows the players participating to the game' do
      expect(my_game.players).to eq [player_1, player_2]
    end
  end
  describe '#player_1' do
    it 'knows the players participating to the game' do
      expect(my_game.player_1).to eq player_1
    end
  end
  describe '#player_2' do
    it 'knows the players participating to the game' do
      expect(my_game.player_2).to eq player_2
    end
  end
  describe '#select' do
    it 'passes the user choices and stores it' do
      expect(player_1).to receive(:set_choice) { 'Rock' }
      my_game.selection(player_1, 'Rock')
    end
  end
  describe '#random_selection' do
    it 'sends a random value to #set_choice' do
      expect(player_1).to receive(:set_choice) { 'Rock' }
      my_game.random_selection(player_1)
      allow(my_game).to receive(:random_selection) { 'Rock' }
    end
  end

  describe '#results' do
    it 'decides who is the winner' do
      player = instance_double('Player', :choice => 'Rock')
      computer = instance_double('Player', :choice => 'Paper')
      my_game.results(player, computer)
      expect(my_game.winner).to eq computer
    end
  end

end
