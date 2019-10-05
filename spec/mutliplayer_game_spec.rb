require 'multiplayer_game'

describe MultiplayerGame do
  let(:player1) { double(:player1, name: "Kevin", session: "a session") }
  let(:player2) { double(:player2, name: "Steve", session: "another session") }

  subject(:mpgame) { described_class.new(player1) }

  context 'when ready' do
    it 'knows both players' do
      mpgame.add_second(player2)
      expect(mpgame.player1).to eq(player1)
      expect(mpgame.player2).to eq(player2)
    end
  end

  describe "#add_second" do
    it 'adds a second player to the game' do
      mpgame.add_second(player2)
      expect(mpgame).to be_ready
    end
  end
  
  describe '#ready?' do
    context 'when only one player joined' do
      it 'returns false' do
        expect(mpgame.ready?).to eq false
      end
    end
    
    context 'when both players have joined' do
      it 'returns true' do
        mpgame.add_second(player2)
        expect(mpgame).to be_ready
      end
    end
  end

  describe '#set_player move' do
    context 'given a move an a session' do
      it 'assigns a move to the relevant player' do
        expect(player1).to receive(:move=).with(:rock)
        mpgame.set_player_move('Rock', 'a session')
      end
    end
  end
end