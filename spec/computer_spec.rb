require 'computer'

describe Computer do
  describe '#choice' do
    it 'computer returns an item' do
      expect(Computer::OPTIONS).to be_include Computer.choice
    end
  end
end
