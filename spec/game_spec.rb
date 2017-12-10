require 'game'

describe Game do
  let(:player1) { double(:player1, name: 'Bill Kerman', choice: :rock) }
  let(:player2) { double(:player2, name: 'Bob Kerman', choice: :paper) }
  let(:text_maker) { double(:text_maker) }

  subject { described_class.new(text_maker) }

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
      expect(text_maker).to receive(:play_text).with(player1, player2, player2.name)
      subject.play
    end
  end
end
