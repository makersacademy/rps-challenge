require 'computer'

describe Computer do
  let(:computer) { Computer.new('Computer') }

  describe '#name' do
    it 'returns the name' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#selection' do
    it 'makes a random selection' do
      expect(computer.selection(1)).to eq 'paper'
    end
  end
end
