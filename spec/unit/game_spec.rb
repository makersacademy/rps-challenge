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

  describe '#choice' do
    it 'should allow player choose an option ' do
      expect(game.choice('rock')).to eq(:rock)
    end
    it 'should store chosen option' do
      game.choice('rock')
      expect(game.at_option).to eq :rock
    end
  end

  describe '#random' do
    it 'should return a random option' do
      expect(3.times { game.random_pick }).to_not eq(:rock)
    end
  end

  describe '#result?' do
    it 'should win' do
      game.choice('rock')
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      game.random_pick
      expect(game.result?).to eq :win
    end
    it 'should draw' do
      game.choice('rock')
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      game.random_pick
      expect(game.result?).to eq :draw
    end
    it 'should loose' do
      game.choice('rock')
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      game.random_pick
      expect(game.result?).to eq :loss
    end
  end
end
