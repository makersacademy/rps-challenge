require './lib/game.rb'

describe Game do
  let(:player_double) { double :player }
  let(:computer_double) { double :computer }
  subject(:game) { described_class.new(player_double, computer_double) }

  it 'accepts one instance of player' do
    expect(game.player).to eq player_double
  end

  describe '#result' do
    it 'returns a draw result' do
      allow(computer_double).to receive(:computer_turn).and_return(:paper)
      allow(player_double).to receive(:chosen_item).and_return(:paper)
      expect(game.result).to eq "It's a draw!"
    end

    it 'returns a win result' do
      allow(computer_double).to receive(:computer_turn).and_return(:paper)
      allow(player_double).to receive(:chosen_item).and_return(:scissors)
      allow(player_double).to receive(:name).and_return("Rianne")
      expect(game.result).to eq "Rianne wins!"
    end

    it 'returns a lose result' do
      allow(computer_double).to receive(:computer_turn).and_return(:rock)
      allow(player_double).to receive(:chosen_item).and_return(:scissors)
      allow(player_double).to receive(:name).and_return("Rianne")
      expect(game.result).to eq "Rianne loses!"
    end
  end
end
