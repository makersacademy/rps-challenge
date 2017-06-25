require 'game'

describe Game do
  
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) do
    player1 = double(player1)
    allow(player1).to receive(:name) { 'Momo' }
    player1
  end
  
  let(:player2) do
    player2 = double(player2)
    allow(player2).to receive(:name) { 'Computer' }
    player2
  end
  
  
  describe 'attributes' do
    it 'receives player as an argument' do
      expect(game.player1).to eq player1
    end
  end
  
  describe '#create_new_game' do
    it 'creates a new instance of the game' do
      Game.create_new_game(player1, player2)
      expect(Game.game_instance).to be_an_instance_of(Game)
    end
  end
  
  describe '#result_rps' do
    it 'shows player 2 won' do
      allow(player1).to receive(:current_choice) { :rock }
      allow(player2).to receive(:current_choice) { :paper }
      expect(game.result_rps(player1.current_choice, player2.current_choice)).to eq 2
    end
    it 'shows player 1 won' do
      allow(player1).to receive(:current_choice) { :scissors }
      allow(player2).to receive(:current_choice) { :paper }
      expect(game.result_rps(player1.current_choice, player2.current_choice)).to eq 1
    end
    it 'shows player 2 won' do
      allow(player1).to receive(:current_choice) { :scissors }
      allow(player2).to receive(:current_choice) { :rock }
      expect(game.result_rps(player1.current_choice, player2.current_choice)).to eq 2
    end
    it 'shows it is a tie' do
      allow(player1).to receive(:current_choice) { :rock }
      allow(player2).to receive(:current_choice) { :rock }
      expect(game.result_rps(player1.current_choice, player2.current_choice)).to eq 0
    end
  end
  
  describe '#type' do
    it 'registers a sudden death game' do
      game.register_type("Play Rock, Paper, Scissors sudden death!!!!")
      expect(game.type).to eq :sudden_death
    end
    
    it 'registers a 3 out of 5 game' do
      game.register_type("Play Rock, Paper, Scissors 3 out of 5!!!!")
      expect(game.type).to eq :multiple
    end
  end
  
end
