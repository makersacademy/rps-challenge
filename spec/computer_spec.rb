require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#initialize' do
    it 'initializes with the default name "Robot"' do
      expect(computer.name).to eq 'Robot'
    end
  end

end
