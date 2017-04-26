require 'player'

describe Player do
  subject(:ruan) { described_class.new('Ruan') }

  describe '#initialization' do
    it 'should contain players name' do
      expect(ruan.name).to eq 'Ruan'
    end
  end
end
