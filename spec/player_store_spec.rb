require 'player_store'

describe PlayerStore do
  let(:player){double :player}
  subject(:player_store) {described_class}

  context 'Add a Player to the store' do
    it 'stores a player' do
      player_store.add(player.object_id, player)
      expect(player_store.players).not_to be_empty
    end
  end
  context 'finds a player' do
    it 'finds a previously stored player' do
      id = player.object_id
      player_store.add(id, player)
      expect(player_store.find(id)).to eq player
    end
  end
  context 'no match' do
    it 'raises an error when the player is not found' do
      id = player.object_id
      expect {player_store.find(id)}.to raise_error NoPlayerError
    end

  end
end
