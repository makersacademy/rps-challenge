require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
  end

  describe '#random_weapon' do
    it 'selects a random weapon' do
      expect(computer.random_weapon).to eq(:rock)
    end
  end
end
