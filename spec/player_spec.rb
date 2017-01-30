require 'player'

describe Player do

  subject(:player) { described_class.new(name) }
  let(:name) { double :name }

  describe '#initialize' do
    it 'initializes with a name' do
      expect(player.name).to eq name
    end
  end

  describe '#choose_weapon' do
    it 'assigns weapon' do
      player.choose_weapon("rock")
      expect(player.weapon).to eq :rock
    end
  end
end
