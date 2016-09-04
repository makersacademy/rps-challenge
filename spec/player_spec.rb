require 'player'

describe Player do
  subject(:player) {described_class.new('James')}

  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq 'James'
    end
  end

  describe '#choice' do
    it 'allows the player to choose between rock, paper or scissors' do
      expect(player.select_choice('rock')).to eq 'rock'
    end

    it 'returns the players choice' do
      player.select_choice('paper')
      expect(player.choice).to eq 'paper'
    end
  end


end
