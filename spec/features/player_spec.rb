require 'player'
describe Player do
  subject(:sayem) { Player.new('Sayem') }
  it 'returns the players name' do
    expect(sayem.name).to eq 'Sayem'

    describe '#name' do
    it 'returns the players name' do
      expect(sayem.name).to eq 'Sayem'
    end
  end
end
