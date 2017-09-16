require 'store.rb'

describe PlayerDatabase do
    let(:player_1) { double :player }
  subject(:player_database) { described_class.new [player_1] }

  describe '#instantiation' do
    it 'has a player inside it' do
      expect(player_database.contents).to eq([player_1])
    end

    it 'can select a player' do
      expect(player_database.contents[1]).to_not eq(player_1)
      expect(player_database.contents[0]).to eq(player_1)
    end

  end
  
end
