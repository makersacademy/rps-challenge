require 'game'

describe Game do

  let(:scissor) { 'scissor' }
  let(:paper) { 'paper' }
  let(:rock) { 'rock' }
  let(:player) { 'Flooba' }
  let(:game_scissor) { described_class.new(player, scissor) }
  let(:game_paper) { described_class.new(player, paper) }
  let(:game_rock) { described_class.new(player, rock) }

  describe '#play' do
    context 'when rock is selected by user' do
      it 'returns win with scissor response' do
        allow(game_rock).to receive(:randomised_options).and_return('scissor')
        expect(game_rock.play).to eq 'Computer selected scissor, you win!'
      end
      it 'returns loss with paper response' do
        allow(game_rock).to receive(:randomised_options).and_return('paper')
        expect(game_rock.play).to eq 'Computer selected paper, you lose!'
      end
    end

    context 'when paper is selected by user' do
      it 'returns win with rock response' do
        allow(game_paper).to receive(:randomised_options).and_return('rock')
        expect(game_paper.play).to eq 'Computer selected rock, you win!'
      end
      it 'returns loss with scissor response' do
        allow(game_paper).to receive(:randomised_options).and_return('scissor')
        expect(game_paper.play).to eq 'Computer selected scissor, you lose!'
      end
    end

    context 'when scissor is selected by user' do
      it 'returns win with paper response' do
        allow(game_scissor).to receive(:randomised_options).and_return('paper')
        expect(game_scissor.play).to eq 'Computer selected paper, you win!'
      end
      it 'returns loss with rock response' do
        allow(game_scissor).to receive(:randomised_options).and_return('rock')
        expect(game_scissor.play).to eq 'Computer selected rock, you lose!'
      end
    end
  end

  describe '#draw?' do
    it 'returns draw when parameter equals random selection' do
      allow(game_scissor).to receive(:randomised_options).and_return('scissor')
      expect(game_scissor.draw?).to eq 'Draw!'
    end
  end

end
