require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#initialize' do
    it 'initializes with the default name "CPU"' do
      expect(computer.name).to eq 'CPU'
    end
  end

end
