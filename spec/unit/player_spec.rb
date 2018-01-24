require_relative '../../lib/player'

describe Player do
  subject(:player) { described_class.new("Test name") }

  it 'has a name' do
    expect(player.name).to eq "Test name"
  end

  describe '#choose' do
    it 'chooses rock' do
      player.choose(:rock)
      expect(player.move).to eq :rock
    end

    it 'chooses paper' do
      player.choose(:paper)
      expect(player.move).to eq :paper
    end

    it 'chooses scissors' do
      player.choose(:scissors)
      expect(player.move).to eq :scissors
    end

    it 'fails when making an invalid move' do
      expect { player.choose(:bird) }.to raise_error "Invalid move"
    end
  end
end
