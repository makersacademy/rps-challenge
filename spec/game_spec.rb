require 'game'

describe Game do
  let(:player1) { double(:player1, name: 'Bill Kerman', choice: :rock) }
  let(:player2) { double(:player2, name: 'Bob Kerman', choice: :paper) }

  srand 2
  
  describe '#players' do
    it "should allow access to the player1 object" do
      subject.player1 = player1
      expect(subject.player1).to eq player1
    end
    it "should allow access to the player2 object" do
      subject.player2 = player2
      expect(subject.player2).to eq player2
    end
  end

  describe '#play' do
    it "should return a string showing the winner between the players" do
      subject.player1 = player1
      subject.player2 = player2
      expect(subject.play).to eq "Bill Kerman chose rock,\nBob Kerman chose paper,\nBob Kerman Wins!"
    end
  end
end
