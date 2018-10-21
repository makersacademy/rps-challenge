require 'computer'

describe Computer do
  let(:computer) {described_class.new}
  context "initializing" do
    it "has a name" do
      expect(computer.name).not_to be_empty
    end
  end
  context 'choosing move' do
    it 'can choose rock' do
      allow(computer).to receive(:pick).and_return 'Rock'
      expect(computer.choice).to eq 'Rock'
    end
    it 'can choose paper' do
      allow(computer).to receive(:pick).and_return 'Paper'
      expect(computer.choice).to eq 'Paper'
    end
    it 'can choose scissors' do
      allow(computer).to receive(:pick).and_return 'Scissors'
      expect(computer.choice).to eq 'Scissors'
    end
  end
end
