require 'player'

describe Player do
  subject(:dave) { described_class.new("Dave") }

  describe '#name' do
    it 'should return the player\'s name' do
      expect(dave.name).to eq "Dave"
    end
  end

  describe "#set_weapon" do
    it 'should set the player\'s weapon' do
      dave.set_weapon('ROCK')
      expect(dave.weapon).to eq 'ROCK'
    end
  end

end
