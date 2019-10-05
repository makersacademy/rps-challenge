require 'game'

describe Game do
  let(:ai) { double(:cpu, get_move: :scissors) }
  let(:ai_class) { double(:ai_class, new: ai) }

  subject(:game) { described_class.new(name: "Kevin", ai_class: ai_class) }

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

    context 'when the user picks Rock' do
      context 'and the AI picks scissors' do
        it 'returns :win' do
          expect(game.play('Rock')).to eq :win
        end
      end

      context 'and the AI picks Paper' do
        it 'returns :lose' do
          allow(ai).to receive(:get_move) { :paper }
          expect(game.play('Rock')).to eq :lose
        end
      end
      
      context 'and the AI picks Rock' do
        it 'returns :draw' do
          allow(ai).to receive(:get_move) { :rock }
          expect(game.play('Rock')).to eq :draw
        end
      end
    end

    context 'when the user picks Scissors' do
      context 'and the AI picks scissors' do
        it 'returns :win' do
          expect(game.play('Scissors')).to eq :draw
        end
      end

      context 'and the AI picks Paper' do
        it 'returns :lose' do
          allow(ai).to receive(:get_move) { :paper }
          expect(game.play('Scissors')).to eq :win
        end
      end
      
      context 'and the AI picks Rock' do
        it 'returns :draw' do
          allow(ai).to receive(:get_move) { :rock }
          expect(game.play('Scissors')).to eq :lose
        end
      end
    end

    context 'when the user picks Paper' do
      context 'and the AI picks scissors' do
        it 'returns :win' do
          expect(game.play('Paper')).to eq :lose
        end
      end

      context 'and the AI picks Paper' do
        it 'returns :lose' do
          allow(ai).to receive(:get_move) { :paper }
          expect(game.play('Paper')).to eq :draw
        end
      end
      
      context 'and the AI picks Rock' do
        it 'returns :draw' do
          allow(ai).to receive(:get_move) { :rock }
          expect(game.play('Paper')).to eq :win
        end
      end
    end
  end
end