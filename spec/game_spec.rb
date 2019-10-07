require 'game'

describe Game do

  subject(:game) { described_class.new(conditions)}
  let(:conditions) { {'player' => 'One', 'move' => :paper, 'comp_move' => :rock} }

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

    subject(:win_game) { described_class.new(winning_moves) }
    subject(:lose_game) { described_class.new(losing_moves) }
    subject(:draw_game) {described_class.new(draw_moves) }

    let(:winning_moves) { { 'player' => 'One', 'move' => :paper, 'comp_move' => :rock } }
    let(:losing_moves) { { 'player' => 'One', 'move' => :scissors, 'comp_move' => :rock } }
    let(:draw_moves) { { 'player' => 'One', 'move' => :rock, 'comp_move' => :rock } }

    describe '#win?' do
      it 'returns true if player chooses paper and computer chooses rock' do
        expect(win_game.win?).to eq true
      end
    end 

    describe '#lose?' do
      it 'returns true if the player chooses scissors and computer chooses rock' do
        expect(lose_game.lose?).to eq true
      end
   end

    describe '#draw?' do
      it 'returns true if player and computer both choose rock' do
        expect(draw_game.draw?).to eq true   
      end
    end
  end
end
