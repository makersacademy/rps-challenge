require 'game'

describe Game do
  subject(:game) { Game.new("rock", "scissors") }

  describe '#player' do
    it 'shows the player hand' do
      expect(game.player).to eq "rock"
    end
  end

  describe '#computer' do
    it 'shows computer hand' do
      expect(game.computer).to eq "scissors"
    end
  end

  describe 'winner?' do
    it 'shows winner' do
    expect(game.winner?).to eq "You chose rock and the computer chose scissors! Well done!"
  end
end
end
