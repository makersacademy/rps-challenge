require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#name' do
    it 'returns the name' do
      expect(computer.name).to eq "Computer"
    end
  end

end