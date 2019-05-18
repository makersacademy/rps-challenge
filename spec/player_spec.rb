require 'player'

describe Player do
  subject(:francesca) { Player.new('Francesca') }

  describe '#name' do
    it 'returns name of player' do
      expect(francesca.name).to eq('Francesca')
    end
  end

  describe '#weapons' do
    it 'shows the choice of weapons' do
      expect(francesca.weapons).to eq(Game::WEAPONS.sample)
    end
  end

  # selects weapon option
  # compares against computers weapon

end
