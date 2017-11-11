require 'game'
# rspec tests for game class

describe Game do

  let(:player) { double :player, name: 'JJ' }
  let(:player2) { double :player2, name: nil }
  subject(:game) { described_class.new('JJ') }

  describe 'initialization' do
    it 'should be an instance of game class' do
      expect(game).to be_an_instance_of(Game)
    end

    it 'should create only one instance of itself' do
      expect(Game.create=(game)).to eq game
    end
    context 'without player2' do
      it ' should set computer as default player 2 if none provided' do
        expect(game.player2).to be_an_instance_of(Computer)
      end
    end
  end

end
