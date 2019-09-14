require 'player'

describe Player do
  it 'returns the player name' do
    sayem = Player.new('Sayem')
    expect(sayem.name).to eq 'Sayem'
  end
end

  describe '#name' do
    it 'returns the players name' do
      sayem = Player.new('Sayem')
      expect(sayem.name).to eq 'Sayem'
    end
  end

# describe Player do
#   subject(:sayem) { Player.new('Sayem') }
#   it 'returns the players name' do
#     expect(sayem.name).to eq 'Sayem'
#
#     describe '#name' do
#     it 'returns the players name' do
#       expect(sayem.name).to eq 'Sayem'
#     end
#   end
# end
