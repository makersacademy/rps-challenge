require 'multiplayer_game_creator'

describe MultiplayerGameCreator do
  let(:mpgame) { double(:multiplayer_game) }
  let(:mpgame_class) { double(:multiplayer_game_class, instance: nil, create: mpgame) }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  let(:player_class) { double(:player_class, new: player1) }

  subject(:mpgame_creator) { described_class.new(multiplayer_game_class: mpgame_class, player_class: player_class) }

  describe '#new_player' do
    it 'checks for a current instance of MultiplayerGame' do
      expect(mpgame_class).to receive(:instance)
      mpgame_creator.new_player("Kevin", "a session")
    end

    context 'when no Multiplayer game exists' do
      it 'creates a new player with the given name and session' do
        expect(player_class).to receive(:new).with("Kevin", "a session")
        subject.new_player("Kevin", "a session")
      end
      
      it 'creates a new game with the created player' do
        expect(mpgame_class).to receive(:create).with(player1)
        subject.new_player("Kevin", "a session")
      end
    end

    context 'when a multiplayer game exists' do
      it 'adds a second player' do
        allow(mpgame_class).to receive(:instance) { mpgame }
        allow(player_class).to receive(:new) { player2 }
        expect(mpgame).to receive(:add_second).with(player2)
        mpgame_creator.new_player("Steve", "another session")
      end
    end
  end
end
