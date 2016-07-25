require 'game'

describe Game do
  subject(:game) { described_class.new(name) }
  let(:name) { double(:name) }
  let(:rock) { double(:rock) }

     allow_any_instance_of(Array).to receive(:sample).and_return('scissors')


  describe '#name' do
    it 'returns player name' do
      expect(game.name).to eq(name)
    end
  end

  describe '#weapon' do
    it 'returns player weapon' do
      expect(game.weapon(rock)).to eq(rock)
    end
  end

  describe '#opponent_weapon' do
    it 'returns opponent weapon' do
      expect(game.opponent_weapon).to eq(rock)
    end
  end

end
