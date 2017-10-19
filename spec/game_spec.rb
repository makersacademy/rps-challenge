require 'game'
require 'move'

describe Game do
  let(:player_1) { double(:player_1, name: "name_1") }
  let(:player_2) { double(:player_2, name: "name_2") }
  subject(:game) { Game.create(player_1, player_2) }

  describe '#result' do
    it 'makes Paper beat Rock' do
      allow(player_1).to receive(:move).and_return(Move.new('Rock'))
      allow(player_2).to receive(:move).and_return(Move.new('Paper'))
      expect(game.result).to eq "name_2 wins!"
    end

    it 'makes Scissors beat Paper' do
      allow(player_1).to receive(:move).and_return(Move.new('Scissors'))
      allow(player_2).to receive(:move).and_return(Move.new('Paper'))
      expect(game.result).to eq "name_1 wins!"
    end

    it 'makes Rock beat Scissors' do
      allow(player_1).to receive(:move).and_return(Move.new('Scissors'))
      allow(player_2).to receive(:move).and_return(Move.new('Rock'))
      expect(game.result).to eq "name_2 wins!"
    end

    it 'makes Paper tie with Paper' do
      allow(player_1).to receive(:move).and_return(Move.new('Paper'))
      allow(player_2).to receive(:move).and_return(Move.new('Paper'))
      expect(game.result).to eq "It's a draw!"
    end

    it 'makes Rock tie with Rock' do
      allow(player_1).to receive(:move).and_return(Move.new('Rock'))
      allow(player_2).to receive(:move).and_return(Move.new('Rock'))
      expect(game.result).to eq "It's a draw!"
    end

    it 'makes Scissors tie with Scissors' do
      allow(player_1).to receive(:move).and_return(Move.new('Scissors'))
      allow(player_2).to receive(:move).and_return(Move.new('Scissors'))
      expect(game.result).to eq "It's a draw!"
    end
  end
end
