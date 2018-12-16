require 'game'

describe Game do
  subject(:game) { described_class.new(challenger, computer) }
  let(:challenger) { double :challenger, name: 'Link' }
  let(:computer) { double :computer, name: :Computer }

  describe '#game_result' do
    context 'challenger: rock, computer: paper' do
      it 'returns loss for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:rock)
        allow(computer).to receive(:choice).and_return(:paper)
        challenger = game.challenger_move
        computer = game.computer_move
        expect(game.game_result(challenger, computer)).to eq(false)
      end
    end

    context 'challenger: paper, computer: scissors' do
      it 'returns loss for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:paper)
        allow(computer).to receive(:choice).and_return(:scissors)
        challenger = game.challenger_move
        computer = game.computer_move
        expect(game.game_result(challenger, computer)).to eq(false)
      end
    end

    context 'challenger: scissors, computer: rock' do
      it 'returns loss for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:scissors)
        allow(computer).to receive(:choice).and_return(:rock)
        challenger = game.challenger_move
        computer = game.computer_move
        expect(game.game_result(challenger, computer)).to eq(false)
      end
    end

    context 'challenger: rock, computer: scissors' do
      it 'returns win for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:rock)
        allow(computer).to receive(:choice).and_return(:scissors)
        challenger = game.challenger_move
        computer = game.computer_move
        expect(game.game_result(challenger, computer)).to eq(true)
      end
    end
    
    context 'challenger: scissors, computer: paper' do
      it 'returns win for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:scissors)
        allow(computer).to receive(:choice).and_return(:paper)
        challenger = game.challenger_move
        computer = game.computer_move
        expect(game.game_result(challenger, computer)).to eq(true)
      end
    end

    context 'challenger: paper, computer: rock' do
      it 'returns win for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:paper)
        allow(computer).to receive(:choice).and_return(:rock)
        challenger = game.challenger_move
        computer = game.computer_move
        expect(game.game_result(challenger, computer)).to eq(true)
      end
    end

  end
end
