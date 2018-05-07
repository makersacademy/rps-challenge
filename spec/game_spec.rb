require './lib/game.rb'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }

  describe '#initialize' do
    it 'should initialize an instance of player' do
      expect(game.player).to eq player
    end
    it 'should initialize an instance of computer' do
      expect(game.computer).to eq computer
    end
  end

  describe '#result' do
    before do
      allow(player).to receive(:weapon).and_return('Rock')
    end
    it 'should return a tie if weapons are the same' do
      allow(computer).to receive(:weapon).and_return('Rock')
      expect(game.result).to eq :tie
    end
    it 'should return computer wins if computer wins' do
      allow(computer).to receive(:weapon).and_return('Paper')
      expect(game.result).to eq :lose
    end
    it 'should return player wins if player wins' do
      allow(computer).to receive(:weapon).and_return('Scissors')
      expect(game.result).to eq :win
    end
  end
end
