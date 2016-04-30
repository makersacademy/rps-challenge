require 'computer'

describe Computer do
  subject(:computer) { described_class.new}
  let(:move) {double :paper}

  describe '#computer_move' do
    it "allows for random output" do
      allow(computer).to receive(:computer_move).and_return :paper
      expect(computer.computer_move).to eq :paper
    end
  end
end
