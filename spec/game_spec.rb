require 'game'

describe Game do
  let(:ai) { double(:cpu, get_move: :scissors) }
  let(:ai_class) { double(:ai_class, new: ai) }
  let(:battle) { double(:battle, outcome: :win) }
  let(:battle_class) { double(:battle_class, new: battle) }

  subject(:game) { described_class.new(name: "Kevin", ai_class: ai_class, battle_class: battle_class) }

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
      game.play("Rock")
      expect(game.result).to eq :win
    end

    it 'knows the ai choice' do
      game.play("Rock")
      expect(game.ai_move).to eq(:scissors)
    end
  end

  describe '#play' do
    context 'given a user move' do
      it 'gets a move from the computer opponent' do
        expect(ai).to receive(:get_move)
        game.play('Rock')
      end
    end

    it 'gets the result from the Battle class' do
      expect(battle).to receive(:outcome).with(:rock, :scissors)
      game.play('Rock')
    end
  end
end