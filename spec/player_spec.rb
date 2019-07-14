require 'player'

describe Player do
  subject(:bob) { Player.new("Bob") }

  describe '#name' do
    it 'creates a Player object when named it' do
      expect(bob.name).to eq "Bob"
    end
  end
end
