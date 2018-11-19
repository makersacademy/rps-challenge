require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#initialize' do
    it 'has a name' do
      expect(computer.name).to eq "Macbook Pro"
    end
  end

  describe '#selection' do
    it 'randomly chooses one of the three weapons' do
      expect(Computer::WEAPONS).to include(computer.selection)
    end
  end
end
