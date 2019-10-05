require 'multiplayer_game_creator'

describe MultiplayerGameCreator do
  let(:mpgame) { double(:multiplayer_game) }
  let(:mpgame_class) { double(:multiplayer_game_class, instance: nil, create: mpgame) }

  subject(:mpgame_creator) { described_class.new(multiplayer_game_class: mpgame_class) }

  describe '#new_player' do
    it 'checks for a current instance of MultiplayerGame' do
      expect(mpgame_class).to receive(:instance)
      mpgame_creator.new_player("Kevin")
    end
    context 'when no Multiplayer game exists' do
      it 'creates a new game with a given name' do
        expect(mpgame_class).to receive(:create).with("Kevin")
        expect(subject.new_player("Kevin")).to eq mpgame
      end
    end

    context 'when a multiplayer game exists' do
      it 'adds a second player' do
        name = "Steve"
        allow(mpgame_class).to receive(:instance) { mpgame }
        expect(mpgame).to receive(:add_second).with(name)
        mpgame_creator.new_player(name)
      end
    end
  end
end