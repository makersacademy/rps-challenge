require 'player'

describe Player do
  let(:player) { described_class.new('Player name') }
  # let(:default_lives) { described_class::DEFAULT_LIVES }

  describe '#name' do
    it 'Allows a player name to be saved' do
      expect(player.name).to eq 'Player name'
    end
  end

  describe '#take_turn' do
    it 'Can choose rock' do
      expect(player.choice('rock')).to eq 'rock'
    end

    it 'Can choose paper' do
      expect(player.choice('paper')).to eq 'paper'
    end

    it 'Can choose scissors' do
      expect(player.choice('scissors')).to eq 'scissors'
    end
  end

  # describe '#lives' do
  #   it 'Allows a player to have one life' do
  #     expect(player.lives).to eq default_lives
  #   end
  # end

end
