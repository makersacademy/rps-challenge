require 'game'

describe Game do

  let(:player1) { double }
  let(:player2) { double }

  let(:subject) { described_class.new(player1, player2) }

  describe '#initialize' do
    it 'creates player1' do
      expect(subject).to respond_to(:player1)
    end

    it 'creates player2' do
      expect(subject).to respond_to(:player2)
    end
  end
  
  describe '#current_player' do
    
    it 'returns current player (p1 by default)' do
      expect(subject.current_player).to be(subject.player1)
    end

  end

  describe '#change_current_player' do

    it 'changes p1 to p2 when called without :computer parameter' do
      subject.change_current_player(nil)
      expect(subject.current_player).to be(subject.player2)
    end

    it 'does not change p1 to p2 when called with :computer parameter' do
      subject.change_current_player(:computer)
      expect(subject.current_player).to be(subject.player1)
    end

  end

  describe '#outcome' do
    it 'tests weapons against rules to get outcome' do
      rules = double
      expect(rules).to receive(:winner)
      subject.outcome(rules)
    end
  end

end
