require 'game'
require 'human'
require 'computer'

describe Game do
  let(:player1) { double 'human'}
  let(:player2) { double 'computer'}
  describe '#initialize' do
    it 'creates 2 instances of the Player class on instantiation' do
      game1 = Game.new(player1,player2)
      expect(player1).to be_an_instance_of Human
      expect(player2).to be_an_instance_of Computer
    end
  end
end
