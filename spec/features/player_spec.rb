require './lib/player'

describe Player do
  subject(:bob) { Player.new('Bob') }

  describe '#initialize' do
    it 'creates a new player called Bob' do
      expect(bob.name).to eq("Bob")
    end
  end

  describe '#attack_with' do
    it 'sets @attack to rock when attacking with rock' do
      bob.attack_with(:Rock)
      expect(bob.attack).to eq(:Rock)
    end

    it 'raises an error when attacking with un unavailable attack' do
      expect{bob.attack_with(:idiot)}.to raise_error('unavailable attack')
    end
  end
end