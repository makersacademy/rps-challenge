require 'game'

describe Game do

  let(:scissor) { 'scissor' }
  let(:paper) { 'paper' }
  let(:rock) { 'rock' }
  let(:player) { ('Flooba') }
  subject(:game) { described_class.new(player) }

  describe '#play' do
    context 'when rock is selected by user' do
      it 'returns win with scissor response' do
        game.stub(:randomised_options) { 'scissor' }
        expect(game.play(rock)).to eq 'Flooba wins!'
      end
      it 'returns loss with paper response' do
        game.stub(:randomised_options) { 'paper' }
        expect(game.play(rock)).to eq 'Flooba loses!'
      end
      it 'returns draw with rock response' do
        game.stub(:randomised_options) { 'rock' }
        allow(player).to receive(:parameter).and_return 'rock'
        expect(game.play(rock)).to eq 'Draw!'
      end
    end

    context 'when paper is selected by user' do
      it 'returns win with rock response' do
        game.stub(:randomised_options) { 'rock' }
        expect(game.play(paper)).to eq 'Flooba wins!'
      end
      it 'returns loss with scissor response' do
        game.stub(:randomised_options) { 'scissor' }
        expect(game.play(paper)).to eq 'Flooba loses!'
      end
      it 'returns draw with paper response' do
        game.stub(:randomised_options) { 'paper' }
        expect(game.play(paper)).to eq 'Draw!'
      end
    end

    context 'when scissor is selected by user' do
      it 'returns win with paper response' do
        game.stub(:randomised_options) { 'paper' }
        expect(game.play(scissor)).to eq 'Flooba wins!'
      end
      it 'returns loss with rock response' do
        game.stub(:randomised_options) { 'rock' }
        expect(game.play(scissor)).to eq 'Flooba loses!'
      end
      it 'returns draw with scissor response' do
        game.stub(:randomised_options) { 'scissor' }
        expect(game.play(scissor)).to eq 'Draw!'
      end
    end
  end

end
