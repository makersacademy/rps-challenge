require 'player'

describe Player do
  subject(:dave) { described_class.new('Dave') }

  describe 'initialize' do
    it 'has a name' do
      expect(dave.name).to eq 'Dave'
    end
  end   
end
