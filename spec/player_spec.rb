require 'player'

describe Player do

  subject { Player.new ("Spok") }

  describe "#make_move" do
    it "lets the player make a move" do
      expect(subject).to respond_to(:make_move).with(1).argument
    end

    it "saves the player's move" do
      subject.make_move(:rock)
      expect(subject.move).to eq :rock
    end
  end
end