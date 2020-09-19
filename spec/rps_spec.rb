require 'rps'

RSpec.describe Game do 

  let(:game) { Game.new }
  
  describe 'class initialization' do 

    it 'instance has hash to store defeat combinations' do 
      expected = {rock: :scissors, paper: :rock, scissors: :paper}
      expect(game.defeats).to eq expected
    end 

  end 

  describe 'playing game' do 
  
    it 'computer can make a move' do 
      allow(game).to receive(:throw).and_return(:rock)
      expect(game.throw).to eq :rock
    end 

  end 

end 