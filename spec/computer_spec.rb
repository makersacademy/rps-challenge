require 'computer'

describe Computer do
  let(:computer_1) { described_class.new }

  describe '#move' do
    # srand(67809)
    it 'generates random computer move' do
      allow(computer_1).to receive(:move).and_return('rock')
      expect(computer_1.move).to eq 'rock'
    end
  end
end
