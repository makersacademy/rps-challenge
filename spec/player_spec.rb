require 'player'

describe Player do
  let(:player) { described_class.new('Player') }

  describe '#name' do
    it 'Allows a player name to be saved' do
      expect(player.name).to eq 'Player'
    end
  end

  describe '#take_turn' do
    it 'Can choose rock' do
      expect(player.take_turn('rock')).to eq :rock
    end

    it 'Can choose paper' do
      expect(player.take_turn('paper')).to eq :paper
    end

    it 'Can choose scissors' do
      expect(player.take_turn('scissors')).to eq :scissors
    end
  end

  describe '#attack' do
    it 'Returns the players attack' do
      player.take_turn('rock')
      expect(player.attack).to eq :rock
    end
  end

end
