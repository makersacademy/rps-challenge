require 'computer'
describe Computer do
  subject(:computer) { described_class.new }

  describe '#name' do
    it 'returns the name of computer' do
      expect(computer.name).to eq 'Computer'
    end
  end

end
