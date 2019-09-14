require './lib/game.rb'

describe Game do
  describe 'player selects rock' do
    before(:each) do
      player = Player.new('Dave')
      @game = Game.new(player)
      srand(1)
      @game.play('Scissors')
    end
    it 'updates player choice' do
      expect(@game.player_choice).to eq('Scissors')
    end
    it 'generates a computer rps choice' do
      expect(@game.computer_choice).to eq('Paper')
    end
    it 'calculates the winner' do
      expect(@game.winner).to eq 'Dave'
    end
  end
  describe 'player selects paper' do
    before(:each) do
      player = Player.new('Dave')
      @game = Game.new(player)
      srand(1)
      @game.play('Paper')
    end
    it 'updates player choice' do
      expect(@game.player_choice).to eq('Paper')
    end
    it 'generates a computer rps choice' do
      expect(@game.computer_choice).to eq('Scissors')
    end
    it 'calculates the winner' do
      expect(@game.winner).to eq 'Computer'
    end
  end
  describe 'player selects scissors' do
    before(:each) do
      player = Player.new('Dave')
      @game = Game.new(player)
      srand(1)
      @game.play('Scissors')
    end
    it 'updates player choice' do
      expect(@game.player_choice).to eq('Scissors')
    end
    it 'generates a computer rps choice' do
      expect(@game.computer_choice).to eq('Paper')
    end
    it 'calculates the winner' do
      expect(@game.winner).to eq 'Dave'
    end
  end
end
