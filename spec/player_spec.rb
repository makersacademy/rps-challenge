require 'player'

describe Player do

  subject(:player) { described_class.new('Sam') }
  describe '#name' do
    it 'stores player\'s name' do
      expect(player.name).to eq 'Sam'
    end

    it 'stores a move which is defaulted to nil at instantiation' do
      expect(player.choice).to eq nil
    end

    it 'updates player\'s move' do
      subject.update_choice('rock')
      expect(subject.choice).to eq 'rock'
    end
  end
end
