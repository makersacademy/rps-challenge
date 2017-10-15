require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

    it 'can create a new class object' do
      expect(computer).to be_an_instance_of described_class
    end

end
