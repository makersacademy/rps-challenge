require 'player'

describe Player do 
  subject(:cat) { Player.new('Cat', Weapon.new(Game::WEAPONS.first)) }

  describe "#name" do 
    it 'returns the name' do 
      expect(subject.name).to eq 'Cat'
    end 
  end 
end 