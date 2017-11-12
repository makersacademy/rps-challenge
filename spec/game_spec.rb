require 'game'

describe Game do

  let(:scissor) { 'scissor' }
  let(:paper) { 'paper' }
  let(:rock) { 'rock' }
  let(:player) { 'Flooba' }
  let(:game_scissor) { described_class.new(player, scissor) }
  let(:game_paper) { described_class.new(player, paper) }
  let(:game_rock) { described_class.new(player, rock) }
  let(:game) { described_class.new(player, rock) }

  describe '#play' do
    context 'when rock is selected by user' do
      it 'returns win with scissor response' do
        game_rock.stub(:randomised_options) { 'scissor' }
        expect(game_rock.play).to eq 'Flooba wins!'
      end
      it 'returns loss with paper response' do
        game_rock.stub(:randomised_options) { 'paper' }
        expect(game_rock.play).to eq 'Flooba loses!'
      end
    end

    context 'when paper is selected by user' do
      it 'returns win with rock response' do
        game_paper.stub(:randomised_options) { 'rock' }
        expect(game_paper.play).to eq 'Flooba wins!'
      end
      it 'returns loss with scissor response' do
        game_paper.stub(:randomised_options) { 'scissor' }
        expect(game_paper.play).to eq 'Flooba loses!'
      end
    end

    context 'when scissor is selected by user' do
      it 'returns win with paper response' do
        game_scissor.stub(:randomised_options) { 'paper' }
        expect(game_scissor.play).to eq 'Flooba wins!'
      end
      it 'returns loss with rock response' do
        game_scissor.stub(:randomised_options) { 'rock' }
        expect(game_scissor.play).to eq 'Flooba loses!'
      end
    end
  end

  describe '#draw?' do
    it 'returns draw when parameter equals random selection' do
      game_scissor.stub(:randomised_options) { 'scissor' }
      expect(game_scissor.draw?).to eq 'Draw!'
    end
  end

end
