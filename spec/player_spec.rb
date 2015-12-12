require 'player'

describe Player do

  subject(:player) { described_class.new('Ed') }

  describe 'defaults' do
    it 'should initialize with a nil choice' do
      expect(player.choice).to eq nil
    end

    it 'should initilaize with a name' do
      expect(player.name).to eq 'Ed'
    end
  end

  describe '#RPS' do
    it 'should change choice depending on input' do
      player.rps('Rock')
      expect(player.choice).to eq 'Rock'
    end
  end

end
