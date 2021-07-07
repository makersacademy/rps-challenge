require 'computer_choice'

describe Computer do
  describe 'Computer choices' do
    it 'returns Rock when new instance is created' do
      srand(2)
      expect(Computer.new).to eq 'Rock'
    end

    it 'returns Paper when new instance is created' do
      srand(1)
      expect(Computer.new).to eq 'Paper'
    end

    it 'returns Scissors when new instance is created' do
      srand(3)
      expect(Computer.new).to eq 'Scissors'
    end
  end
end
