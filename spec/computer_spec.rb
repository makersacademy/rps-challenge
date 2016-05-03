require 'computer'

describe Computer do
  subject(:computer) { described_class.new}
  let(:move) {double :paper}

  describe '#name' do
    it "is Computer" do
      expect(computer.name).to eq "Computer"
    end
  end
  describe '#computer_move' do
    it "allows for random output" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      expect(computer.computer_move).to eq :paper
    end
  end
end
