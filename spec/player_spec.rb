require 'player'

describe Player do

  subject(:player) { described_class.new }

  it 'initializes with a name' do
    bob = described_class.new('Bob')
    expect(bob.name).to eq 'Bob'
  end

  it 'initializes with a default name of monster' do
    bob = described_class.new
    expect(bob.name).to eq 'monster'
  end

  describe '#random_move' do
    it 'randomly selects rock move' do
      srand(67_811)
      player.random_move
      expect(player.move).to eq "Rock"
    end

    it 'randomly selects paper move' do
      srand(67_808)
      player.random_move
      expect(player.move).to eq "Paper"
    end

    it 'randomly selects scissors move' do
      srand(67_809)
      player.random_move
      expect(player.move).to eq "Scissors"
    end
  end
end
