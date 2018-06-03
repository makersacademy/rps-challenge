require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#choice' do
    it 'should choose a weapon at random' do
      allow(computer).to receive(:choice) { "Paper" }
      expect(Computer::CHOICE_OPTIONS).to include computer.choice
    end
  end

end
