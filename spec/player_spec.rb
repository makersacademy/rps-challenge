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

  describe 'ready?' do
    context 'when no move chosen' do
      it 'returns false' do
        expect(player).to_not be_ready
      end
    end

    context 'after a move is chosen' do
      it 'returns true' do
        player.move = :rock
        expect(player).to be_ready
      end
    end
  end

  describe '#reset_move' do
    it 'sets @move to nil' do
      player.move = :rock
      expect { player.reset_move }.to change { player.move }.to nil
    end
  end
end
