require 'player.rb'

describe Player do
  subject(:dexter) { Player.new('Dexter', 'ROCK') }

  describe 'a name' do
    it 'returns the name' do
      expect(dexter.name).to eq 'Dexter'
    end
  end

  describe 'a weapon' do
    it 'shows the chosen weapon' do
      expect(dexter.weapon).to eq 'ROCK'
    end
  end
end
