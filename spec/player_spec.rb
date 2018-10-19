require_relative '../model/player'

describe Player do
  subject { Player.new("Mittens") }

  context '#initialize' do
    it 'creates a new player with a name' do
      expect(subject.name).to eq "Mittens"
    end
  end

  context '#move' do
    it 'returns a move' do
      expect(subject.move).to eq "Rock"
    end
  end
end
