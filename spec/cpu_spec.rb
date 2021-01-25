require 'cpu'

describe CPU do

  subject(:cpu) { CPU.new() }

  describe '#name' do
    it 'Should return the name of the cpu' do
      srand(1008)
      expect(cpu.name).to eq "El'chip dip"
    end
  end
end
