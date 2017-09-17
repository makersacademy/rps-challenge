require 'database.rb'

describe PlayerDatabase do
  let(:player_1) { double :player, name: 'Rory', weapon: 'Spider' }
  let(:player_2) { double :player, name: 'Light Yagami' }
  let(:player_3) { double :player, name: 'Misa Misa' }
  subject(:player_database) { described_class.new [player_1] }

  describe '#instantiation' do
    it 'has a player inside it' do
      expect(player_database.contents).to eq([player_1])
    end

    it 'LIVE: can select a player, and default is computer' do
      real_player_database = PlayerDatabase.new
      expect(player_database.contents[1]).to_not eq(player_1)
      expect(real_player_database.contents[0].name).to eq('Roborory')
    end

  end

  describe 'describe players in database' do
    it 'can list the players who are playing' do
      player_database.contents.push(player_2,player_3)
      expect(player_database.list_of_player_names).to eq "Rory, Light Yagami and Misa Misa"
    end

  end

  describe 'player manipulation' do
    # it 'LIVE: can assign a weapon to a player' do
    #   real_player_database = PlayerDatabase.new
    #   real_player_database.contents << player_1
    #   real_player_database.contents[1].select_weapon('rock')
    #   expect(real_player.weapon).to eq 'rock'
    # end

    it 'can stick a specificed player in the contents' do
      expect(player_database.new_player(player_2)).to eq [player_1, player_2]
    end

    it 'LIVE: can create a new player in the contents' do
      player_database.new_player('new entry', 'L')
      expect(player_database.list_of_player_names).to eq "Rory and L"
    end


  end

end
