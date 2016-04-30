require 'player'

describe Player do
  let(:player) { described_class.new('Player name') }
  let(:default_lives) { described_class::DEFAULT_LIVES }

  describe '#name' do
    it 'Allows a player name to be saved' do
      expect(player.name).to eq 'Player name'
    end
  end

  describe '#lives' do
    it 'Allows a player to have one life' do
      expect(player.lives).to eq default_lives
    end
  end

  # describe '#take_turn' do
  #   it 'Allows a player to take their turn' do
  #     expect(player.take_turn).to
  #   end
  # end

end
