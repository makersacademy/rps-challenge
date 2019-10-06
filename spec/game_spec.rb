require 'game'

describe Game do

  subject(:game) { described_class.new(conditions) }
  let(:conditions) { { 'player' => 'One', 'comp_move' => :rock, 'move' => :paper } }

  describe '#player_name' do
    it "returns the player's name" do
    expect(game.player).to eq 'One'
    end
  end

  describe '#move' do
    it "returns the player's move" do
      expect(game.move).to eq :paper
    end
  end

  describe '#comp_move' do
    it "returns the computer's move" do
      expect(game.comp_move).to eq :rock
    end
  end

  context 'game over' do
    describe '#win?' do
      it 'returns true if player chooses paper and computer chooses rock' do
        expect(game.win?).to eq true
      end
    end 
  end
end
