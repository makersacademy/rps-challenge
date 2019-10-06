require 'multiplayer_game'

describe MultiplayerGame do
  let(:player1) { double(:player1, name: "Kevin", session: "a session", :move= => :rock, move: :rock) }
  let(:player2) { double(:player2, name: "Steve", session: "another session", :move= => :paper, move: :paper) }
  let(:battle) { double(:battle) }
  let(:battle_class) { double(:battle_class, new: battle) }
  let(:messager) { double(:messager) }
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
  
  describe 'result' do
    it 'forwards the player moves to the Battle class' do
      mpgame.add_second(player2)
      expect(battle).to receive(:outcome).with(:rock, :paper)
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
        expect(messager).to receive(:messages).with(player1, player2, :win)
        mpgame.player_messages("a session")
      end

      it 'gets the losing messages from the messager' do
        expect(messager).to receive(:messages).with(player2, player1, :lose)
        mpgame.player_messages("another session")
      end
    end

    context 'when player 2 wins' do
      before :each do
        allow(battle).to receive(:outcome) { :player2_win }
      end
      it 'gets the losing messages from the messager' do
        expect(messager).to receive(:messages).with(player1, player2, :lose)
        mpgame.player_messages("a session")
      end

      it 'gets the winning messages from the messager' do
        expect(messager).to receive(:messages).with(player2, player1, :win)
        mpgame.player_messages("another session")
      end
    end

    context 'when result is a draw' do
      before :each do
        allow(battle).to receive(:outcome) { :draw }
      end
      it 'gets the draw messages from the messager' do
        expect(messager).to receive(:messages).with(player1, player2, :draw)
        mpgame.player_messages("a session")
      end
    end
  end

  describe '#set_player_move' do
    context 'given a move and a session' do
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