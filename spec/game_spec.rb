require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }

  subject(:game) { Game.new(:player, :computer) }

  describe '#player_choice' do
    it 'shows the player move' do
      allow(subject).to receive(:player_choice) { "Rock" }
      game.player_choice
      expect(game.player_choice).to eq "Rock"
    end
  end

  describe '#computer_choice' do
    it 'shows the computer move' do
      allow(subject).to receive(:computer_choice) { "Scissors" }
      game.computer_choice
      expect(game.computer_choice).to eq "Scissors"
    end
  end

  describe '#result' do
    it 'returns the result' do
      
    end
  end

end