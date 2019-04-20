require 'referee'
describe Referee do
  let(:player1) { double :player, choice: 'Rock' }
  let(:player2) { double :player, choice: 'Paper' }
  let(:player3) { double :player, choice: 'Scissors' }
  let(:player4) { double :player, choice: 'Rock' }

  describe '#declare_winner' do
    it 'declare nil winner when draw' do
      referee = described_class.new(player1, player4)
      expect(referee.declare_winner).to eq nil
    end

    it 'declare winner to be player1 when when player1 wins ' do
      referee = described_class.new(player1, player3)
      expect(referee.declare_winner).to eq player1
    end

    it 'declare winner to be player2 when when player1 wins' do
      referee = described_class.new(player1, player2)
      expect(referee.declare_winner).to eq player2
    end
  end
end
