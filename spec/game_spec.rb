require 'game'

RSpec.describe Game do 
  let(:player) { double :player }
  let(:game) { Game.new(:player) }
  describe '#new' do 
    it 'stores a player at start' do 
      expect(game.player).to eq :player
    end
  end
  describe '#generate_computer_choice' do
   
    it 'returns rock' do 
      srand(0)
      expect(game.generate_computer_choice).to eq "rock"
    end
    it 'returns paper' do
      srand(1)
      expect(game.generate_computer_choice).to eq "paper"
    end
    it 'returns scissors' do
      srand(3)
      expect(game.generate_computer_choice).to eq "scissors"
    end
  end
end 
