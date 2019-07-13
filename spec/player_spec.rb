require 'player'

describe Player do
  subject(:rianne) { Player.new('Rianne') }

  describe '#name' do
    it 'returns the name' do
      expect(rianne.name).to eq 'Rianne'
    end
  end

  describe '#selects' do
    it 'allows player to select an item' do
      rianne.selects(:paper)
      expect(rianne.chosen_item).to eq :paper
    end
  end
end
