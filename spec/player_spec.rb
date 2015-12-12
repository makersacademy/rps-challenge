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

end
