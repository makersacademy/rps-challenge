require 'computer'

describe Computer do
  subject(:computer) {described_class.new}
  describe '#initialize' do
    it 'initiazes with default name of HAL' do
      expect(computer.name).to eq 'HAL'
    end
  end
end
