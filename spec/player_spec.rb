require 'player'

describe Player do
  subject(:ryan) { Player.new('Ryan') }

  describe '#name' do
    it 'should hold user name' do
      expect(ryan.name).to eq 'Ryan'
    end
  end

  describe '#HP' do
    it 'should have 100 hp' do
      expect(ryan.hp).to eq 100
    end

    it 'should have 90 hp after hit' do
      ryan.hit
      expect(ryan.hp).to eq 90
    end
  end
end
