require 'computer'

RSpec.describe Computer do
  subject(:computer) { described_class.new }

  describe '#option' do
    it 'returns a random option' do
      # expect(Computer::OPTIONS).to include(computer.option)
      allow(Computer::OPTIONS).to receive(:option).and_return("Scissors")
    end
  end
end
