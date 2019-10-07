require 'computer'

describe Computer do
  let(:computer) { described_class.new }
  context "initializing" do
    it "has a name" do
      expect(computer.name).not_to be_empty
    end
  end
  context 'choosing move' do
    it 'can choose rock' do
      allow(Game::MOVES).to receive(:sample).and_return 'Rock'
      computer.pick
      expect(computer.choice).to eq 'Rock'
    end
    it 'can choose paper' do
      allow(Game::MOVES).to receive(:sample).and_return 'Paper'
      computer.pick
      expect(computer.choice).to eq 'Paper'
    end
    it 'can choose scissors' do
      allow(Game::MOVES).to receive(:sample).and_return 'Scissors'
      computer.pick
      expect(computer.choice).to eq 'Scissors'
    end
  end
end
