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

  context '#set_move' do
    it 'sets the move attribute' do
      subject.set_move("Rock")
      expect(subject.move).to eq "Rock"
    end
  end
end
