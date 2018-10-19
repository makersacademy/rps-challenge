require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#weapon' do
    it 'returns the value of weapon' do
      expect(subject.weapon("Rock")).to eq 'Rock'
    end
  end
end
