require 'game'

describe Game do
  
  let(:player_1) { double :player_1 }
  let(:game) { Game.new(player_1) }
  
  describe '#player 1' do
    it 'returns the player_1s name' do
      game = Game.new("Player")
      expect(game.player_1).to eq "Player"
    end
  end 

  describe '#player 2 - computer' do
    it 'the computer is player 2' do
      expect(game.player_2).to eq "Computer"
    end 
  end 

  describe '#computer' do
    it 'returns the computers move' do
      allow(game).to receive(:computer) { "Rock" }
      expect(game.computer).to eq "Rock"
    end 
  end 
  
  # I'm pretty sure this test is useless as I've just mocked the behaviour and then tested that

  describe '#play' do

    it 'takes two moves as arguments' do 
      expect(game).to respond_to(:play).with(2).arguments 
    end 
    
    it 'returns the winning player\'s name' do 
      game = Game.new("Lily")
      allow(game).to receive(:computer) { "Rock" }
      computer_move = game.computer
      expect(game.play("Paper", computer_move)).to eq "Lily"
    end 

    it 'returns nil if a draw' do
      allow(game).to receive(:computer) { "Rock" }
      computer_move = game.computer
      expect(game.play("Rock", computer_move)).to eq nil
    end 
  end
end 
