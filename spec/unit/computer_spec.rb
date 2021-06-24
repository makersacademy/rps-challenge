require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  it { is_expected.to respond_to(:computer_choice) }

  describe '#computer_choice' do
    it 'can choose a random option' do
      expect(['Rock', 'Paper', 'Scissors']).to include computer.computer_choice
    end
  end
end
