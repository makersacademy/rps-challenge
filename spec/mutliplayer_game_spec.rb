require 'multiplayer_game'

describe MultiplayerGame do
  subject(:mpgame) { described_class.new(name: "Kevin", session: "a session") }

  context 'when ready' do
    it 'knows both players names' do
      subject.add_second("Steve", "another session")
      expect(mpgame.player1_name).to eq "Kevin"
      expect(mpgame.player2_name).to eq "Steve"
    end
  end

  describe "#add_second" do
    it 'adds a second player to the game' do
      mpgame.add_second("Steve", "another session")
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
        mpgame.add_second("Steve", "another session")
        expect(mpgame).to be_ready
      end
    end
  end
end