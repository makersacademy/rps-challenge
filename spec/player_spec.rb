require 'player'

describe Player do
  subject(:player) { described_class.new('Kevin', "a session") }
  it 'knows its name' do
    expect(player.name).to eq "Kevin"
  end

  it 'knows its session' do
    expect(player.session).to eq "a session"
  end

  describe '#move' do
    it 'can set a move' do
      expect(player.move = :rock).to eq :rock
    end

    it 'returns the move' do
      player.move = :rock
      expect(player.move).to eq(:rock)
    end
  end
end