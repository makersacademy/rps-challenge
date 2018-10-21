require 'game'

describe Game do

  let(:player_1) { double :player, :move => 'rock', :name => 'Terry' }
  let(:player_2) { double :player, :move => 'scissors', :name => 'Mace' }

  subject(:game) { described_class.new(player_1, player_2) }
  subject(:draw_game) { described_class.new(player_1, player_1) }
  subject(:loss_game) { described_class.new(player_2, player_1) }


  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#draw?' do
    it 'is a draw' do
      expect(draw_game.draw?).to eq true
    end

    it 'is not a draw' do
      expect(game.draw?).to eq false
    end
  end

  describe '#winner?' do
    it 'returns true' do
      expect(game.winner?).to eq true
    end

    it 'returns false' do
      expect(draw_game.winner?).to eq false
    end
  end


  describe '#outcome' do
    it 'win' do
      expect(game.outcome).to eq "You win!"
    end

    it 'draw' do
      expect(draw_game.outcome).to eq "It's a draw."
    end

    it 'Loss' do
      expect(loss_game.outcome).to eq "You lose!"
    end

  end
end
