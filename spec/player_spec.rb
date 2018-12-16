require 'player'

describe Player do
  subject(:player) { described_class.new('Mario') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'Mario'
    end
  end

  describe '#selected_option' do
    it 'saves the selected option when it is rock' do
      player.selected_option = 'rock'
      expect(player.selected_option).to eq('rock')
    end
  end
end
