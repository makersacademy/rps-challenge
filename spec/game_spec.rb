require 'game'

describe Game do
  let(:player) { double :player, make_decision: 'Rock', choice: 'Rock' }
  let(:computer) { double :computer, choice: 'Rock' }
  # let(:computer2) { double :computer, choice: 'Paper' }
  # let(:computer3) { double :computer, choice: 'Scissors' }
  let(:referee) { double :referee, declare_winner: player }
  let(:referee_class) { double :referee_class, new: referee }

  subject { described_class.new(player, computer, referee_class) }

  describe '#self.create' do
    it 'create a game inistance' do
      expect(described_class.create(player).player). to eq player
    end
  end

  describe '#chose' do
    it 'call make_decision on player' do
      expect(player).to receive(:make_decision)
      subject.chose('Rock')
    end
  end

  describe '#complete' do
    it 'declare the winner' do
      expect(referee).to receive(:declare_winner)
      subject.complete
    end
  end 
end
