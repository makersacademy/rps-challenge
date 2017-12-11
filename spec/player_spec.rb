require 'player.rb'

describe Player do

  let(:player) { described_class.new('TEST') }

  describe '#name' do
    it 'Should return the name of the player' do
      expect(player.name).to eq 'TEST'
    end

  end

  describe '#score' do
    it 'Should return the score as a positive number of the player' do
      expect(player.score).to be >= 0
    end

    it 'Should have a default score at start' do
      expect(player.score).to eq Player::DEFAULT_SCORE
    end

  end

  describe '#win' do
    it 'Should increase the score of the player by 1' do
      expect { player.win }.to change { player.score }.by(1)
    end

  end

  describe '#choice' do
    it 'Should return the choice of the player' do
      expect(player.choice).to eq Player::DEFAULT_CHOICE
    end

  end

end
