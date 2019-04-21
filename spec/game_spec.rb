require 'game'

describe Game do
  let(:player1) { double :player, make_decision: 'Rock', choice: 'Rock' }
  let(:player2) { double :player, make_decision: 'Paper', choice: 'Paper' }
  let(:referee) { double :referee, declare_winner: player2 }
  let(:referee_class) { double :referee_class }

  subject { subject = described_class.new([], referee_class)
            subject.add_player(player1)
            subject.add_player(player2)
            subject
  }

  describe '#self.create' do
    it 'create a game inistance' do
      expect(described_class.create). to be_instance_of described_class
    end
  end

  describe '#chose' do
    it 'call make_decision on player' do
      expect(player1).to receive(:make_decision)
      subject.chose(player1, 'Rock')
    end
  end

  describe '#complete' do
    it 'declare the winner' do
      allow(referee_class).to receive(:new).and_return(referee)
      expect(referee).to receive(:declare_winner)
      subject.complete
    end
  end
end
