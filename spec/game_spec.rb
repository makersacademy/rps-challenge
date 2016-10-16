require 'game'

describe Game do

  let(:game) { described_class.new(player_1) }
  let(:player_1) { double(:player, name: 'Hilary') }

  describe '#initialize' do
    it 'accepts player 1' do
      expect(game.player_1.name).to eq 'Hilary'
    end

    it 'creates a computer player' do
      allow(game.player_2).to receive(:name).and_return('Trump')
      expect(game.player_2.name).to eq 'Trump'
    end
  end

  describe '#player_select' do
    it 'adds r,p or s to the selections array' do
      game.player_select('r')
      expect(game.choices.empty?).to be false
    end
  end

  describe '#computer_select' do
    it 'adds r,p or s to the selections array' do
      game.computer_select
      expect(game.choices.empty?).to be false
    end
  end

  describe '#choices' do
    it 'contains the players selections' do
      game.player_select('r')
      game.computer_select
      expect(game.choices.count).to eq 2
    end
  end
end
