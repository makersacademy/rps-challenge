require 'player'
describe Player do
  subject(:player) { Player.new('Yadira') }
  describe '#name' do
  it 'returns name' do
    expect(player.name). to eq 'Yadira'
   end
 end
end
