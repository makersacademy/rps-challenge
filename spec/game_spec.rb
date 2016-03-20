require 'game'
require 'spec_helper'

describe Game do
  let(:player){double :player, choice: :rock}
  let(:computer){double :computer, choice: :paper}
  subject(:game){described_class.new(player, computer)}

  describe '#initialization' do
    it 'should accept two objects as players' do
      expect(game.player1).to eq player
      expect(game.player2).to eq computer
    end
  end
  describe '#result' do
    it 'should return true if player1 wins' do
      expect(game.result).to eq false
    end

    it 'should return 1 if it is a tie' do
      allow(computer).to receive(:choice).and_return(:rock)
      expect(game.result).to eq 1
    end
  end


  describe '#winner' do
    it 'should return the player who won' do
      expect(game.winner).to eq computer
    end
    it 'should return tie if it is a tie' do
      allow(computer).to receive(:choice).and_return(:rock)
      expect(game.winner).to eq 'Tie'
    end
  end
  before do
    Game.save(game)
  end
  describe '#self.save' do
    it 'saves instance of game to class variable' do

      expect(Game.load).to eq game
    end
  end

  describe '#self.load' do
    it 'returns the saved game object' do
      expect(Game.load).to eq game
    end
  end



end
