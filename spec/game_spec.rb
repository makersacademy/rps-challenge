require 'game'

describe Game do
  subject(:game) { Game.new(player) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe '#winner' do
    it 'decides the winner' do
      allow(player).to receive(:selected_option).and_return('rock')
      allow(computer).to receive(:computer_choice).and_return('paper')
      expect(game.winner).to eq computer
    end
  end
end
