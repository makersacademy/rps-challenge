require 'multiplayer_game'

describe MultiplayerGame do
  let(:player1) { double(:player1, name: "Kevin", session: "a session", :move= => :rock, move: :rock, reset_move: nil) }
  let(:player2) { double(:player2, name: "Steve", session: "another session", :move= => :paper, move: :paper, reset_move: nil) }

  let(:battle) { double(:battle, outcome: :player1_win) }
  let(:battle_class) { double(:battle_class, new: battle) }
  
  let(:messager) { double(:messager, multiplayer_messages: nil) }
  let(:messager_class) { double(:messager_class, new: messager) }

  subject(:mpgame) { described_class.new(player1, battle_class: battle_class, messager_class: messager_class) }

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
  
  describe '#get_players' do
    context 'when given a session' do
      it 'returns the player and opponent' do
        mpgame.add_second(player2)
        expect(mpgame.get_players("a session")).to eq [player1, player2]
      end
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
  
  describe '#result' do
    before :each do
      mpgame.add_second(player2)
    end
    it 'forwards the players to the Battle class' do
      expect(battle).to receive(:outcome).with(player1.move, player2.move)
      mpgame.result
    end
  end
  
  describe 'player_messages' do
    before :each do
      mpgame.add_second(player2)
    end
    
    context 'before the first move' do
      it 'returns nil' do
        allow(player1).to receive(:move) { nil }
        allow(player2).to receive(:move) { nil }
        expect(mpgame.player_messages("a session")).to be_nil
      end
    end
    
    context 'when player 1 wins' do
      before :each do
        allow(battle).to receive(:outcome) { :player1_win }
      end
      it 'gets the winning messages from the messager' do
        expect(messager).to receive(:multiplayer_messages).with([player1, player2, :win])
        mpgame.player_messages("a session")
      end
      
      it 'gets the losing messages from the messager' do
        expect(messager).to receive(:multiplayer_messages).with([player2, player1, :lose])
        mpgame.player_messages("another session")
      end
    end

    context 'when player 2 wins' do
      before :each do
        allow(battle).to receive(:outcome) { :player2_win }
      end
      it 'gets the losing messages from the messager' do
        expect(messager).to receive(:multiplayer_messages).with([player1, player2, :lose])
        mpgame.player_messages("a session")
      end
      
      it 'gets the winning messages from the messager' do
        expect(messager).to receive(:multiplayer_messages).with([player2, player1, :win])
        mpgame.player_messages("another session")
      end
    end
    
    context 'when result is a draw' do
      before :each do
        allow(battle).to receive(:outcome) { :draw }
      end
      it 'gets the draw messages from the messager' do
        expect(messager).to receive(:multiplayer_messages).with([player1, player2, :draw])
        mpgame.player_messages("a session")
      end
    end
    
    context 'when both players have retrieved messages' do
      it 'resets player moves' do
        expect(player1).to receive(:reset_move)
        expect(player2).to receive(:reset_move)
        mpgame.player_messages("a session")
        mpgame.player_messages("another session")
      end
    end
  end
    
  describe 'players_ready?' do
    before :each do
      mpgame.add_second(player2)
    end
    it 'checks ready status of both players' do
      expect(player1).to receive(:ready?) { true }
      expect(player2).to receive(:ready?)
      mpgame.players_ready?
    end
    context 'when none or one player ready' do
      it 'returns false' do
        allow(player1).to receive(:ready?) { true }
        allow(player2).to receive(:ready?) { false }
        expect(mpgame.players_ready?).to eq false
      end
    end
    
    context 'when both players ready' do
      it 'returns true' do
        allow(player1).to receive(:ready?) { true }
        allow(player2).to receive(:ready?) { true }
        expect(mpgame.players_ready?).to eq true
      end
    end
  end
  
  describe '#set_player_move' do
    context 'given a move and a session' do
      it 'assigns a move to the relevant player' do
        expect(player1).to receive(:move=).with(:rock)
        mpgame.set_player_move('Rock', 'a session')
      end
    end
  end
end
