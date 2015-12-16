require 'player'

describe Player do

  subject(:player) { described_class.new('Ed') }

  describe 'defaults' do
    it 'should initialize with a nil choice' do
      expect(player.choice).to eq nil
    end

    it 'should initialize with a name' do
      expect(player.name).to eq 'Ed'
    end

    it 'should initialize with an empty score' do
      expect(player.score).to eq 0
    end

    it 'should be a human' do
      expect(player.computer).to be false
    end
  end

  describe '#rock' do
    it 'should change choice to rock' do
      player.rock
      expect(player.choice).to eq :rock
    end
  end

  describe '#paper' do
    it 'should change choice to paper' do
      player.paper
      expect(player.choice).to eq :paper
    end
  end

  describe '#scissors' do
    it 'should change choice to scissors' do
      player.scissors
      expect(player.choice).to eq :scissors
    end
  end

  describe '#add_score' do
    it 'should add a point to the score' do
      player.add_score
      expect(player.score).to eq 1
    end
  end

end
