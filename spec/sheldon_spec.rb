require 'sheldon'

describe Sheldon do
  subject(:sheldon) {described_class.new}

  describe '#initialize' do
    it 'initiliazes with name' do
      expect(sheldon.name).to eq "Sheldon"
    end

  end

end
