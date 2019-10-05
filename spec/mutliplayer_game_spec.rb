require 'multiplayer_game'

describe MultiplayerGame do
  let(:player1) { double(:player1, name: "Kevin", session: "a session", :move= => nil, move: nil) }
  let(:player2) { double(:player2, name: "Steve", session: "another session", :move= => nil, move: nil) }

  subject(:mpgame) { described_class.new(player1) }

  context 'when both players present' do
    it 'knows both players' do
      mpgame.add_second(player2)
      expect(mpgame.player1).to eq(player1)
      expect(mpgame.player2).to eq(player2)
    end
  end

  describe "#add_second" do
    it 'adds a second player to the game' do
      mpgame.add_second(player2)
      expect(mpgame).to be_two_players
    end
  end
  
  describe '#two_players?' do
    context 'when only one player joined' do
      it 'returns false' do
        expect(mpgame.two_players?).to eq false
      end
    end
    
    context 'when both players have joined' do
      it 'returns true' do
        mpgame.add_second(player2)
        expect(mpgame).to be_two_player
      end
    end
  end

  describe 'ready?' do
    context 'when none or one player has selected a move' do
      before :each do
        mpgame.add_second(player2)
        allow(player1).to receive(:move) { nil }
        allow(player2).to receive(:move) { nil }
      end

      it 'returns false' do
        expect(mpgame.ready?).to eq false
      end
      
      it 'returns false' do
        allow(player1).to receive(:move) { :rock }
        expect(mpgame.ready?).to eq false
      end
    end
    
    context 'when both players have selected a move' do
      it 'returns true' do
        mpgame.add_second(player2)
        allow(player1).to receive(:move) { :rock }
        allow(player2).to receive(:move) { :paper }
        expect(mpgame.ready?).to eq true
      end
    end
  end

  describe '#set_player move' do
    context 'given a move an a session' do
      it 'assigns a move to the relevant player' do
        expect(player1).to receive(:move=).with(:rock)
        mpgame.set_player_move('Rock', 'a session')
      end
      
      it 'returns the ready status of the game' do
        expect(mpgame.set_player_move('Rock', 'a session')).to eq false
      end
    end
  end
end