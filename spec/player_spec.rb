require 'player'

describe Player do
  subject(:sonny) {Player.new('Sonny')}


  describe '#initialize' do
    it 'returns a name' do
      expect(sonny.name).to eq 'Sonny'
    end
  end

  describe '#player_choice' do
    it 'returns the player choice' do
      sonny.player_choice('Rock')
      expect(sonny.choice).to eq 'Rock'
    end
  end

end
