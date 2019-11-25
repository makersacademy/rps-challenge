require './lib/player.rb'
describe Player do
  subject(:Sujesh) { Player.new('Sujesh') }
  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'Sujesh'
    end
  end
end
