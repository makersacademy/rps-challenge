require './app.rb'
require './lib/player.rb'

describe Player do
    subject(:player) { described_class.new('Usna') }
  
    it 'stores player names' do
      expect(player.name).to eq 'Usna'
    end

    it 'checks weapon is nil at start' do
        expect(player.weapon).to be nil
    end
  
    it "stores player's move" do
      player.select_weapon('Paper')
      expect(player.weapon).to eq 'Paper'
    end
end