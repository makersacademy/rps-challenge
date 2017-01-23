require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  describe "#instrument" do
    it 'returns a random instrument' do
      expect(described_class::OPTIONS).to include computer.instrument
    end
  end


end
