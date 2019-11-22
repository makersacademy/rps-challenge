require './lib/game.rb'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }

  context 'player 2 wins' do
    let(:player_1) { double :player_1, :name => "Sam", :move => "Rock" }
    let(:player_2) { double :player_2, :name => "Charlie", :move => "Paper"}

    it 'should contain the players' do
      expect(game.players).to eq [player_1, player_2]
    end

    describe '#player_1' do
      it 'returns player_1' do
        expect(game.player_1).to eq(player_1)
      end
    end

    describe '#play' do
      it 'should return the winning player' do
        expect(game.play).to eq(player_2)
      end
    end

    describe '#draw?' do
      it 'should be false' do
        expect(game.draw?).to be false
      end
    end
  end

  context 'a draw' do
    let(:player_1) { double :player_1, :name => "Sam", :move => "Rock" }
    let(:player_2) { double :player_2, :name => "Charlie", :move => "Rock"}
    describe '#play' do
      it 'should return draw' do
        expect(game.play).to eq("draw")
      end
    end

    describe '#draw?' do
      it 'should be true' do
        expect(game.draw?).to be true
      end
    end
  end
end
