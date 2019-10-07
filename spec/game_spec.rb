require 'game'

describe Game do
  let(:ai) { double(:BobsFriend, move: :scissors) }
  let(:ai_class) { double(:ai_class, new: ai) }

  let(:battle) { double(:battle, outcome: nil) }
  let(:battle_class) { double(:battle_class, new: battle) }

  let(:messager) { double(:messager) }
  let(:messager_class) { double(:messager_class, new: messager) }

  subject(:game) { 
    described_class.new(
      name: "Kevin",
      ai_class: ai_class,
      battle_class: battle_class,
      messager_class: messager_class
      )
  }

  context 'when instantiated' do
    it 'knows the players name' do
      expect(game.player_name).to eq "Kevin"
    end

    it 'creates an ai opponent' do
      expect(ai_class).to receive(:new)
      Game.new(name: "Kevin", ai_class: ai_class)
    end
  end

  context 'after a game' do
    it 'knows the result' do
      allow(battle).to receive(:outcome) { :player1_win }
      game.play("Rock")
      expect(game.result).to eq :win
    end

    it 'knows the ai choice' do
      game.play("Rock")
      expect(game.ai_move).to eq(:scissors)
    end

    it 'knows the player choice' do
      game.play("Rock")
      expect(game.player_move).to eq(:rock)
    end
  end

  describe '#play' do
    context 'given a user move' do
      it 'gets a move from the computer opponent' do
        expect(ai).to receive(:move)
        game.play('Rock')
      end
    end

    it 'gets the result from the Battle class' do
      expect(battle).to receive(:outcome).with(:rock, :scissors)
      game.play('Rock')
    end
  end
  
  describe 'player_messages' do
    it 'returns nil on the first turn' do
      expect(game.player_messages).to be_nil
    end
    
    context 'when player wins' do
      it 'gets the winning messages from the messager' do
        allow(ai).to receive(:move) { :scissors }
        allow(battle).to receive(:outcome) { :player1_win }
        expect(messager).to receive(:single_player_messages).with(:rock, :scissors, :win)
        game.play("Rock")
        game.player_messages
      end
    end
    
    context 'when computer wins' do
      it 'gets the losing messages from the messager' do
        allow(battle).to receive(:outcome) { :player2_win }
        allow(ai).to receive(:move) { :scissors }
        expect(messager).to receive(:single_player_messages).with(:paper, :scissors, :lose)
        game.play("Paper")
        game.player_messages
      end
    end
    
    context 'when result is a draw' do
      it 'gets the draw messages from the messager' do
        allow(battle).to receive(:outcome) { :draw }
        allow(ai).to receive(:move) { :rock }
        expect(messager).to receive(:single_player_messages).with(:rock, :rock, :draw)
        game.play("Rock")
        game.player_messages
      end
    end
  end
end
