require 'game'
require 'move'

describe Game do
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }
  # let(:move_1) { double(:move_1, beats?: false ) }
  # let(:move_2) { double(:move_2, beats?: true ) }
  subject(:game) { Game.new(player_1, player_2) }

  describe '#result' do
    it 'makes Paper beat Rock' do
      allow(player_1).to receive(:move).and_return(Move.new('Rock'))
      allow(player_2).to receive(:move).and_return(Move.new('Paper'))
      # allow(move_1).to receive(:beats?).with(move_2).and_return(false)
      expect(game.result).to eq "#{player_2} wins!"
    end

    it 'makes Scissors beat Paper' do
      allow(player_1).to receive(:move).and_return(Move.new('Scissors'))
      allow(player_2).to receive(:move).and_return(Move.new('Paper'))
      expect(game.result).to eq "#{player_1} wins!"
    end

    it 'makes Rock beat Scissors' do
      allow(player_1).to receive(:move).and_return(Move.new('Scissors'))
      allow(player_2).to receive(:move).and_return(Move.new('Rock'))
      expect(game.result).to eq "#{player_2} wins!"
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
