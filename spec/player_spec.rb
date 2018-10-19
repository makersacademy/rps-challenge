require 'player'

describe Player do
  subject { Player.new("Mittens") }

  context '#initialize' do
    it "returns the player's name" do
      expect(subject.name).to eq "Mittens"
    end

    it 'creates a player with a blank move' do
      expect(subject.move).to eq ""
    end
  end

  context '#pick_move' do
    it 'sets the move attribute' do
      subject.pick_move("Rock")
      expect(subject.move).to eq "Rock"
    end
  end
end
