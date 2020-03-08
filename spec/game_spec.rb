require 'game'
describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#computer_choice' do
    it 'stores the choice ROCK' do
      srand(0)
      expect(subject.computer.choice).to eq 'ROCK'
    end
    it 'stores the choice PAPER' do
      srand(1)
      expect(subject.computer.choice).to eq 'PAPER'
    end
    it 'stores the choice SCISSORS' do
      srand(3)
      expect(subject.computer.choice).to eq 'SCISSORS'
    end
  end

end
