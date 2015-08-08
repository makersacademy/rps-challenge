require 'game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  context '#winner'
    it 'can return the winner' do
      allow(player1).to receive(:choice) { :rock }
      allow(player2).to receive(:choice) { :paper }
      expect(subject.winner(player1, player2)).to eq(player2)
    end

    it 'can return a draw' do
      allow(player1).to receive(:choice) { :rock }
      allow(player2).to receive(:choice) { :rock }
      expect(subject.winner(player1, player2)).to eq(:draw)
    end
end