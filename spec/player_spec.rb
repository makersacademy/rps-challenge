require 'player'

describe Player do
  let(:name) {double(:name)}

  describe 'playing game' do
    context 'player plays the game' do
      it '#name displays player name' do
        player = Player.new(name)
        expect(player.name).to eq name
    end

    it '#move returns player move' do
        move = 'rock'
        player =  Player.create(name)
        player_move = Player.move(move)


        expect(player_move).to eq move
    end
    it '#show_move displays player move' do
        move = 'rock'
        player =  Player.create(name)
        player_move = Player.move(move)
        expect(player_move).to eq Player.show_move
    end

      it "#create creates a new player" do
        expect(Player).to receive(:new)
        Player.create("Anna")
      end

    end
  end
end