require 'printer'

describe Printer do
  subject(:printer){Printer.new}
  let(:game_tied){:tie}
  let(:game_not_tied){"John"}

  describe '.winner' do
    context 'game is tied' do
      it 'prints "Game is tied!"' do
        expect(described_class.winner(game_tied)).to eq "Game is tied!"
      end
    end

    context 'game is not tied' do
      it 'prints "[PLAYER] won!"' do
        expect(described_class.winner(game_not_tied)).to eq "John won!"
      end
    end
  end
end
