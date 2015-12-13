require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
  end

  describe '#random_option' do
    it 'Displays option selected' do
      expect(computer.random_option).to eq :rock
    end
  end
end
