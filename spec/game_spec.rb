require 'game'
require 'computer'

describe Game do
  subject(:game) { described_class.new("Jim") }
  context '#self.instance' do
    it 'should create a instance of game with a new player' do
      Game.create('Jim')
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end
  context '#result' do
    it 'should return rock as a winner if playing against scissors' do
      allow_any_instance_of(Computer).to receive(:weapon).and_return(:scissors)
      expect(game.result(:rock)).to eq(:win)
    end
    it 'should return rock as a draw if playing against rock' do
      allow_any_instance_of(Computer).to receive(:weapon).and_return(:rock)
      expect(game.result(:rock)).to eq(:tied)
    end
    it 'should return rock as a loser if playing against paper' do
      allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
      expect(game.result(:rock)).to eq(:lose)
    end
    it 'should return paper as a loser if playing against scissors' do
      allow_any_instance_of(Computer).to receive(:weapon).and_return(:scissors)
      expect(game.result(:paper)).to eq(:lose)
    end
    it 'should return paper as a winner if playing against rock' do
      allow_any_instance_of(Computer).to receive(:weapon).and_return(:rock)
      expect(game.result(:paper)).to eq(:win)
    end
    it 'should return paper as a draw if playing against paper' do
      allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
      expect(game.result(:paper)).to eq(:tied)
    end
    it 'should return scissors as a draw if playing against scissors' do
      allow_any_instance_of(Computer).to receive(:weapon).and_return(:scissors)
      expect(game.result(:scissors)).to eq(:tied)
    end
    it 'should return scissors as a loser if playing against rock' do
      allow_any_instance_of(Computer).to receive(:weapon).and_return(:rock)
      expect(game.result(:scissors)).to eq(:lose)
    end
    it 'should return scissors as a winner if playing against paper' do
      allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
      expect(game.result(:scissors)).to eq(:win)
    end
  end
end
