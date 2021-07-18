require 'player'

RSpec.describe Player do
  subject(:denzel) { described_class.new('Denzel') }

  describe '#name' do
    it 'returns the name' do
      expect(denzel.name).to eq 'Denzel'
    end
  end

  describe '#random_weapon' do
    it 'chooses a random weapon' do
      expect(['rock', 'paper', 'scissors']).to include(random_weapon)
    end
  end
end
