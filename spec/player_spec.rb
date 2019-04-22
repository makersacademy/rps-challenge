require 'player'
describe Player do
  subject(:player) { Player.new('Yadira') }

  describe '#name' do
    it 'returns name' do
      expect(player.name). to eq 'Yadira'
    end
  end

  describe '#player_move' do
   let(:choice) { double :choice }
    it 'gives player move' do
      expect(player.player_move(choice)).to eq choice
    end
  end
end
